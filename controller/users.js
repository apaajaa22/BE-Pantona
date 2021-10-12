const UserModel = require("../model/users")
const jwt = require("jsonwebtoken")
const bcrypt = require("bcrypt")
const {APP_URL, APP_KEY, APP_UPLOAD_ROUTE} = process.env

exports.register = async (req, res) => {
  const checkEmail = await UserModel.findOne({
    where: {email: req.body.email},
  })
  if (checkEmail) {
    return res.status(401).json({
      success: false,
      message: "email is already in use",
    })
  } else {
    req.body.password = await bcrypt.hash(
      req.body.password,
      await bcrypt.genSalt()
    )
    const user = await UserModel.create(req.body)
    return res.status(200).json({
      success: true,
      message: "User Created Successfully",
      results: user,
    })
  }
}

exports.login = async (req, res) => {
  const {email, password} = req.body
  const user = await UserModel.findOne({
    where: {email: email},
  })
  if (!user) {
    return res.status(400).json({
      success: false,
      message: "user not found",
    })
  }
  const results = user
  const compare = await bcrypt.compare(password, results.password)

  if (compare) {
    const token = jwt.sign(
      {
        id: results.id,
        email: results.email,
        name: results.name,
        picture: results.picture,
        role: results.role,
      },
      APP_KEY,
      {
        expiresIn: "24h",
      }
    )
    return res.status(200).json({
      success: true,
      message: "Login success",
      token: token,
    })
  } else {
    return res.status(400).json({
      success: false,
      message: "username or password false",
    })
  }
}

exports.detailUser = async (req, res) => {
  const user = await UserModel.findByPk(req.authUser.id, {
    attributes: {
      exclude: ["password"],
    },
  })
  return res.status(200).json({
    success: true,
    message: "detail user",
    results: user,
  })
}

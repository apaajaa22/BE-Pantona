const jwt = require("jsonwebtoken")
const {APP_KEY} = process.env

const auth = (req, res, next) => {
  if (req.headers?.authorization) {
    if (req.headers.authorization.startsWith("Bearer")) {
      try {
        const token = req.headers.authorization.slice(7)
        const user = jwt.verify(token, APP_KEY)
        req.authUser = user
        next()
      } catch (err) {
        return res.status(500).json({
          success: false,
          message: "Sesi berakhir, tolong login kembali",
        })
      }
    }
  } else {
    return res.status(500).json({
      success: false,
      message: "token di butuhkan",
    })
  }
}

module.exports = auth

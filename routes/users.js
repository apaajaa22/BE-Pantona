const users = require("express").Router()
const {register, login, detailUser} = require("../controller/users")
const auth = require("../middlewares/auth")

users.post("/register", register)
users.post("/login", login)
users.get("/me", auth, detailUser)

module.exports = users

const Sequelize = require("sequelize")
const sequelize = require("../config/sequelize")

const User = sequelize.define("users", {
  email: Sequelize.STRING,
  password: Sequelize.STRING,
  name: Sequelize.STRING,
  picture: Sequelize.STRING,
  role: {
    type: Sequelize.STRING,
    defaultValue: "General",
  },
})

module.exports = User

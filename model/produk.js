const Sequelize = require("sequelize")
const sequelize = require("../config/sequelize")

const Produk = sequelize.define("produk", {
  name: Sequelize.STRING,
  picture: Sequelize.STRING,
  kategoriId: Sequelize.INTEGER,
  desc: Sequelize.STRING,
  price: Sequelize.INTEGER,
  stock: Sequelize.STRING,
  gender: Sequelize.STRING,
})

module.exports = Produk

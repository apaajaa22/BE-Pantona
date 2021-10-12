const Sequelize = require("sequelize")
const sequelize = require("../config/sequelize")
const Kategori = require("./kategori")

const Produk = sequelize.define("produk", {
  name: Sequelize.STRING,
  picture: Sequelize.STRING,
  kategoriId: Sequelize.INTEGER,
  desc: Sequelize.STRING,
  price: Sequelize.INTEGER,
  stock: Sequelize.STRING,
  gender: Sequelize.STRING,
})

Produk.belongsTo(Kategori, {foreignKey: "kategoriId", sourceKey: "id"})

module.exports = Produk

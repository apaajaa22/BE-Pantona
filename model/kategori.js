const sequelize = require("../config/sequelize")
const Sequelize = require("sequelize")

const Kategori = sequelize.define("kategori", {
  nama_kategori: Sequelize.STRING,
})

module.exports = Kategori

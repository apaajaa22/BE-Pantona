const produk = require("express").Router()
const {
  createProduk,
  getProduk,
  deleteProduk,
  updateProduk,
  getProdukByKategori,
  getDetailProduk,
} = require("../controller/produk")
const uploadFilter = require("../helpers/multer")

produk.get("/", getProduk)
produk.get("/kategori", getProdukByKategori)
produk.get("/:id", getDetailProduk)
produk.post("/create", uploadFilter, createProduk)
produk.put("/update", uploadFilter, updateProduk)
produk.delete("/delete", deleteProduk)

module.exports = produk

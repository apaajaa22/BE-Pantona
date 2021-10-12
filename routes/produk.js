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
const auth = require("../middlewares/auth")

produk.get("/", getProduk)
produk.get("/kategori", getProdukByKategori)
produk.get("/:id", getDetailProduk)
produk.post("/create", auth, uploadFilter, createProduk)
produk.put("/update", auth, uploadFilter, updateProduk)
produk.delete("/delete", auth, deleteProduk)

module.exports = produk

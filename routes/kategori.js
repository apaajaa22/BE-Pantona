const kategori = require("express").Router()
const {
  createKategori,
  getKategori,
  updateKategori,
  deleteKategori,
  getDetailKategori,
} = require("../controller/kategori")

kategori.get("/", getKategori)
kategori.get("/:id", getDetailKategori)
kategori.post("/post", createKategori)
kategori.put("/update", updateKategori)
kategori.delete("/delete", deleteKategori)

module.exports = kategori

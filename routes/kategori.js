const kategori = require("express").Router()
const {
  createKategori,
  getKategori,
  updateKategori,
  deleteKategori,
  getDetailKategori,
} = require("../controller/kategori")
const auth = require("../middlewares/auth")

kategori.get("/", getKategori)
kategori.get("/:id", getDetailKategori)
kategori.post("/post", auth, createKategori)
kategori.put("/update", auth, updateKategori)
kategori.delete("/delete", auth, deleteKategori)

module.exports = kategori

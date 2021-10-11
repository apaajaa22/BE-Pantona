const router = require("express").Router()
const kategori = require("./kategori")
const user = require("./users")
const produk = require("./produk")

router.use("/kategori", kategori)
router.use("/user", user)
router.use("/produk", produk)

module.exports = router

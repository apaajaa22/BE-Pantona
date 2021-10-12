const Produk = require("../model/produk")
const {Op} = require("sequelize")
const Kategori = require("../model/kategori")
const APP_UPLOAD_ROUTE = "/uploads"
const APP_URL = "http://localhost:8080"

exports.createProduk = async (req, res) => {
  if (req.file) {
    req.body.picture = req.file
      ? `${APP_UPLOAD_ROUTE}/${req.file.filename}`
      : null
  }
  const produk = await Produk.create({
    name: req.body.name,
    picture: req.body.picture,
    kategoriId: req.body.kategoriId,
    desc: req.body.desc,
    price: req.body.price,
    stock: req.body.stock,
    gender: req.body.gender,
  })
  return res.status(201).json({
    success: true,
    message: "membuat produk sukses",
    results: produk,
  })
}

exports.getProduk = async (req, res) => {
  try {
    let {search = "", limit = 5, page = 1} = req.query
    const count = await Produk.count()
    const nextPage =
      page < Math.ceil(count / limit)
        ? `${APP_URL}/api/v1/produk?page=${parseInt(page) + 1}`
        : null
    const prevPage =
      page > 1 ? `${APP_URL}/api/v1/produk?page=${parseInt(page) - 1}` : null
    const produk = await Produk.findAll({
      where: {
        name: {
          [Op.substring]: search,
        },
      },
      include: {
        model: Kategori,
      },
      limit,
      offset: (page - 1) * limit,
    })
    return res.status(201).json({
      success: true,
      message: "list produk ",
      results: produk,
      pageInfo: {
        totalPage: Math.ceil(count / limit),
        currentPage: page,
        nextLink: nextPage,
        prevLink: prevPage,
      },
    })
  } catch (error) {
    return res.status(500).json({
      success: true,
      message: "bad request",
    })
  }
}

exports.getDetailProduk = async (req, res) => {
  const produk = await Produk.findOne({
    where: {
      id: req.params.id,
    },
  })
  if (produk) {
    return res.status(201).json({
      success: true,
      message: "detail produk",
      results: produk,
    })
  } else {
    return res.status(404).json({
      success: false,
      message: "detail produk tidak ditemukan",
    })
  }
}

exports.getProdukByKategori = async (req, res) => {
  try {
    let {kategoriId = 1, limit = 6, page = 1} = req.query
    const count = await Produk.count()
    const nextPage =
      page < Math.ceil(count / limit)
        ? `${APP_URL}/api/v1/produk/kategori?kategoriId=${kategoriId}&page=${
            parseInt(page) + 1
          }`
        : null
    const prevPage =
      page > 1
        ? `${APP_URL}/api/v1/produk/kategori?kategoriId=${kategoriId}&page=${
            parseInt(page) - 1
          }`
        : null
    const produk = await Produk.findAll({
      where: {
        kategoriId: {
          [Op.substring]: kategoriId,
        },
      },
      limit,
      offset: (page - 1) * limit,
    })
    return res.status(201).json({
      success: true,
      message: "list produk ",
      results: produk,
      pageInfo: {
        totalPage: Math.ceil(count / limit),
        currentPage: page,
        nextLink: nextPage,
        prevLink: prevPage,
      },
    })
  } catch (error) {
    return res.status(500).json({
      success: true,
      message: "bad request",
    })
  }
}

exports.updateProduk = async (req, res) => {
  if (req.file) {
    req.body.picture = req.file
      ? `${APP_UPLOAD_ROUTE}/${req.file.filename}`
      : null
  }
  const cekProduk = await Produk.findByPk(req.body.id)
  if (cekProduk) {
    await Produk.update(
      {
        name: req.body.name,
        picture: req.body.picture,
        kategoriId: req.body.kategoriId,
        desc: req.body.desc,
        price: req.body.price,
        stock: req.body.stock,
        gender: req.body.gender,
      },
      {
        where: {
          id: req.body.id,
        },
      }
    )
    return res.status(201).json({
      success: true,
      message: "update produk sukses",
    })
  } else {
    return res.status(404).json({
      success: false,
      message: "produk tidak ditemukan",
    })
  }
}

exports.deleteProduk = async (req, res) => {
  const cekProduk = await Produk.findByPk(req.body.id)
  if (cekProduk) {
    await Produk.destroy({
      where: {
        id: req.body.id,
      },
    })
    return res.status(201).json({
      success: true,
      message: "hapus produk sukses",
    })
  } else {
    return res.status(404).json({
      success: false,
      message: "Produk tidak ditemukan",
    })
  }
}

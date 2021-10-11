const Kategori = require("../model/kategori")

exports.createKategori = async (req, res) => {
  const kategori = await Kategori.create({
    nama_kategori: req.body.nama_kategori,
  })
  return res.status(201).json({
    success: true,
    message: "membuat kategori sukses",
    results: kategori,
  })
}

exports.getKategori = async (req, res) => {
  const kategori = await Kategori.findAll()
  return res.status(201).json({
    success: true,
    message: "list kategori",
    results: kategori,
  })
}

exports.getDetailKategori = async (req, res) => {
  const kategori = await Kategori.findOne({
    where: {
      id: req.params.id,
    },
  })
  return res.status(201).json({
    success: true,
    message: "detail kategori",
    results: kategori,
  })
}

exports.updateKategori = async (req, res) => {
  const cekKategori = await Kategori.findByPk(req.body.id)
  if (cekKategori) {
    await Kategori.update(
      {
        nama_kategori: req.body.nama_kategori,
      },
      {
        where: {
          id: req.body.id,
        },
      }
    )
    return res.status(201).json({
      success: true,
      message: "update kategori sukses",
    })
  } else {
    return res.status(404).json({
      success: false,
      message: "kategori tidak ditemukan",
    })
  }
}

exports.deleteKategori = async (req, res) => {
  const cekKategori = await Kategori.findByPk(req.body.id)
  if (cekKategori) {
    await Kategori.destroy({
      where: {
        id: req.body.id,
      },
    })
    return res.status(201).json({
      success: true,
      message: "hapus kategori sukses",
    })
  } else {
    return res.status(404).json({
      success: false,
      message: "kategori tidak ditemukan",
    })
  }
}

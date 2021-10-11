require("dotenv").config()
const express = require("express")
const app = express()
const cors = require("cors")
const {PORT, APP_UPLOAD_ROUTE, APP_UPLOAD_PATH} = process.env
const router = require("./routes")
const sequelize = require("./config/sequelize")

app.use(express.urlencoded({extended: false}))
app.use(cors())
app.use(APP_UPLOAD_ROUTE, express.static(APP_UPLOAD_PATH))

app.use("/api/v1", router)
app.get("/", (req, res) => {
  return res.json({
    success: true,
    message: "Backend is running",
  })
})

app.listen(PORT || 8080, () => {
  console.log(`APP running on port ${PORT}`)
  sequelize.sync()
})

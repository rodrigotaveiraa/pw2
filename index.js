import express from "express"
require("dotenv").config
const app = express()

const PORT = process.env.PORT || 3333

app.get("/", (req, res) => {
    res.send("Hello world")
})

app.listen(PORT, () => {
    console.log(`server running in port ${PORT}`)
})
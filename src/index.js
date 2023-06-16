// import { PrismaClient } from '@prisma/client'

const { PrismaClient } = require('@prisma/client');
const express = require("express");
const dotenv = require("dotenv");
const app = express();

dotenv.config();

const prisma = new PrismaClient();
const PORT = process.env.PORT;

app.get("/api", (req, res) => {
    res.send("Hello Worldd")
})

app.get("/pengguna", async (req, res) => {
    const pengguna = await prisma.$queryRaw`SELECT * FROM users`

    res.send(pengguna)
})

app.post("/pengguna", async (req, res) => {
    const kodePengguna = '25431'
    const namaPengguna = 'Sayuri Date'
    const emailPengguna = 'cameroon.isaac@gmail.com'

    await prisma.$executeRaw`INSERT INTO users VALUES (${kodePengguna}, ${namaPengguna}, ${emailPengguna});`

    res.status(201).send("Data berhasil diinput")
})

app.put("/pengguna/:kdPengguna", async (req, res) => {
    const kdpggn = req.params.kdPengguna
    const namaPengguna = 'Shibuya Kanon'
    const emailPengguna = 'cameroon.isaac@gmail.com'
    
    await prisma.$executeRaw`UPDATE users SET nama_pengguna = ${namaPengguna}, email_pengguna = ${emailPengguna} WHERE kode_pengguna = ${kdpggn};`
    
    res.status(201).send("Data berhasil diubah")
})

app.delete("/pengguna/:kdPengguna", async (req, res) => {
    const kdpggn = req.params.kdPengguna
    await prisma.$executeRaw`DELETE FROM users WHERE kode_pengguna = ${kdpggn};`

    res.status(201).send("Data berhasil dihapus!")
})

app.listen(PORT, () => {
    console.log("running on " + PORT)
})

import express from "express";

const app = express()

app.get("/", (req,res )=>{
    return res.send("HelloWord");
})

app.listen(45678,()=>{
    console.log("Aplicação rodando na porta 45678");
})


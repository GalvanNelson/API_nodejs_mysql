const express = require("express");
const respuestas = require("../../red/respuestas");
const controlador = require("./index");

const router = express.Router();
router.post("/login", login);

async function login(req, res, next) {
  try {
    const token = await controlador.login(req.body.usuario, req.body.password);
    respuestas.sucess(req, res, token, 200);
  } catch (error) {
    next(error);
  }
}

module.exports = router;

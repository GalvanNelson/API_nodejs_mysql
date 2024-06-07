const express = require("express");
const respuestas = require("../../red/respuestas");
const seguridad = require("./seguridad");
const controlador = require("./index");

const router = express.Router();
router.get("/", todos);
router.get("/:id", uno);
router.post("/", seguridad(), agregar);
router.delete("/", seguridad(), eliminar);

async function todos(req, res, next) {
  try {
    const items = await controlador.todos();
    respuestas.sucess(req, res, items, 200);
  } catch (error) {
    next(error);
  }
}

async function uno(req, res, next) {
  try {
    const items = await controlador.uno(req.params.id);
    if (Object.keys(items).length > 0) {
      respuestas.sucess(req, res, items, 200);
    } else {
      respuestas.error(req, res, "dato no encontrado", 404);
    }
  } catch (error) {
    next(error);
  }
}

async function agregar(req, res, next) {
  try {
    const items = await controlador.agregar(req.body);
    if (req.body.id == 0) {
      mensaje = "Item guardado con exito";
    } else {
      mensaje = "Item actualizado con exito";
    }
    respuestas.sucess(req, res, mensaje, 201);
  } catch (error) {
    next(error);
  }
}

async function eliminar(req, res, next) {
  try {
    const items = await controlador.uno(req.body.id.toString());
    if (Object.keys(items).length > 0) {
      await controlador.eliminar(req.body);
      respuestas.sucess(req, res, "item eliminado", 200);
    } else {
      respuestas.error(req, res, "dato no encontrado", 404);
    }
  } catch (error) {
    next(error);
  }
}

module.exports = router;

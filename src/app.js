const express = require("express");
const morgan = require("morgan");
const clientes = require("./modulos/clientes/rutas");
const usuarios = require("./modulos/usuarios/rutas");
const auth = require("./modulos/auth/rutas");
const error = require("./red/errors");

const app = express();

//morgan se usa para tener registro de las actividades en la web
app.use(morgan("dev"));
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

//rutas
app.use("/api/clientes", clientes);
app.use("/api/usuarios", usuarios);
app.use("/api/auth", auth);
app.use(error);

module.exports = app;

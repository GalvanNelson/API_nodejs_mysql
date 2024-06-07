const db = require("../../database/mysql");
const ctrl = require("./controlador");

module.exports = ctrl(db);

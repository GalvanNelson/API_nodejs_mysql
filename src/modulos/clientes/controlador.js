const TABLA = "clientes";

module.exports = function (dbInyectada) {
  let db = dbInyectada;
  if (!db) {
    db = require("../../database/mysql");
  }

  function todos() {
    return db.todos(TABLA);
  }

  function uno(id) {
    return db.uno(TABLA, id);
  }

  function insertar(data) {
    return db.insertar(TABLA, data);
  }

  function actualizar(data) {
    return db.actualizar(TABLA, data);
  }

  function eliminar(data) {
    return db.eliminar(TABLA, data);
  }

  return { todos, uno, insertar, actualizar, eliminar };
};

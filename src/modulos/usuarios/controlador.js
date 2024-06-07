const TABLA = "usuarios";
const auth = require("../auth");

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

  async function agregar(body) {
    console.log(body);
    const usuario = {
      id: body.id,
      nombre: body.nombre,
      activo: body.activo,
    };

    const respuesta = await db.agregar(TABLA, usuario);

    let insertId = 0;
    if (body.id == 0) {
      insertId = respuesta.insertId;
    } else {
      insertId = body.id;
    }

    let respuesta2 = "";
    if (body.usuario || body.password) {
      respuesta2 = await auth.agregar({
        id: insertId,
        usuario: body.usuario,
        password: body.password,
      });
    }
    return respuesta2;
  }

  function eliminar(data) {
    return db.eliminar(TABLA, data);
  }

  return { todos, uno, agregar, eliminar };
};

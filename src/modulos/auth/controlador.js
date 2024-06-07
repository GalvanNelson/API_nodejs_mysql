const bcrypt = require("bcrypt");
const token = require("../../token");
const TABLA = "auth";

module.exports = function (dbInyectada) {
  let db = dbInyectada;
  if (!db) {
    db = require("../../database/mysql");
  }

  async function login(usuario, password) {
    const data = await db.query(TABLA, { usuario: usuario });
    console.log(data);
    return bcrypt.compare(password, data.password).then((resultado) => {
      if (resultado === true) {
        return token.asignarToken({ ...data });
      } else {
        throw new Error("Informacion invalida");
      }
    });
  }

  async function agregar(data) {
    const authData = {
      id: data.id,
    };

    if (data.usuario) {
      authData.usuario = data.usuario;
    }

    if (data.password) {
      authData.password = await bcrypt.hash(data.password.toString(), 5);
    }

    return db.agregar(TABLA, authData);
  }

  return { agregar, login };
};

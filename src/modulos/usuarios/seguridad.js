const token = require("../../token");

module.exports = function chequearToken() {
  function middleware(req, res, next) {
    token.chequearToken.confirmarToken(req, res, next);
    next();
  }

  return middleware;
};

require("dotenv").config();

module.exports = {
  app: { port: process.env.PORT || 3000 },
  jwt: { secret: process.env.JET_SECRET || "notaSecreta!!!" },
  mysql: {
    host: process.env.SERVER_HOST || "localhost",
    user: process.env.SERVER_USER || "root",
    password: process.env.SERVER_PASSWORD || "",
    database: process.env.SERVER_DATABASE || "prueba",
  },
};

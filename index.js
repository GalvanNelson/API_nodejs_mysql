const app = require("./src/app");
const config = require("./src/config");

app.listen(config.app.port, () => {
  console.log(`http://localhost:${config.app.port}`);
});

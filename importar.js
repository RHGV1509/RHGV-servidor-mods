// del modulo Node filesystem
const fs = require("fs");
const { execSync } = require("child_process");

const paqueteMods = JSON.parse(fs.readFileSync("./modrinth.index.json"));

paqueteMods.files.forEach((mod) => {
  const modUrl = mod.downloads[0];
  const modID = modUrl.split("/data/")[1].split("/")[0];
  const modName = modUrl.split("/").pop();
  console.log(`Instalando mod ID: ${modID} nombre: ${modName} ...`);

  try {
    execSync(`packwiz modrinth add ${modID} -y`, { stdio: "inherit" });
  } catch (error) {
    console.log(`Algo paso con ${modID} ${modName}, error: ${error}`);
  }
});

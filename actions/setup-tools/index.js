const tc = require('@actions/tool-cache');

async function action() {
  const node12Path = await tc.downloadTool('https://nodejs.org/dist/v12.7.0/node-v12.7.0-linux-x64.tar.gz');
  const node12ExtractedFolder = await tc.extractTar(node12Path, './nodejs');
  console.log("File extracted")
}
action();
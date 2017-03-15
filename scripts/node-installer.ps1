$url = "https://nodejs.org/dist/v6.10.0/node-v6.10.0-win-x64.zip"
$zipName = "node-v6.10.0-win-x64.zip"

if (Test-Path distribution/windowsNode) {
  rm distribution/windowsNode -Recurse
}
Invoke-WebRequest -Uri $url -OutFile $zipName
mkdir distribution/windowsNode
mv $zipName distribution/windowsNode/
cd distribution/windowsNode
tar -xzf $zipName  --strip 1
mv node.exe ../../bin/

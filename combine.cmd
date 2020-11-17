pushd "%~dp0\Mods\WallPipeSupports"

copy /y ..\..\Content\WallPipeSupports\Icons\Wallpipe-logo.png Wallpipe-logo.png

echo {"resources"^:{"icon"^:"Wallpipe-logo.png"}} > "resources.json"

jq --tab -s ".[0] * .[1]" "data.json" "resources.json" > "data-fixed.json"

move /y "data-fixed.json" "data.json"

del /q "resources.json"

popd

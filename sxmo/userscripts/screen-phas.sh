url2="https://pomf.lain.la/upload.php"

file=`sxmo_screenshot.sh`

curl -F "files[]=@${file}" $url2 | jq '.files' | jq '.[0]' | jq -r '.url' | wl-copy -n

wl-paste -n | xargs notify-send
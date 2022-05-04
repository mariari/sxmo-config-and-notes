set -x

rec() {
    rsync -auP pine:/home/user/.config/sxmo  ./
}

send() {
    rsync -auP ./sxmo pine:/home/user/.config/
    # Have to move by hand
    rsync -auP ./local-scripts/ pine:/home/user/.local/bin/
    rsync -auP ./global/ pine:~/global
}

action="$1"
"$action" "$@"

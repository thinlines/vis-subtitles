#!/bin/sh

video="$1"
subs="$1.srt"

main () {
	mkfifo "mpv-fifo-$RANDOM"
	mpv "$video" --idle --input-ipc-server=$server
	vis "$subs"
}

main

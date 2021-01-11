#!/bin/bash

for var in "$@"
do

    if [ ${var: -4} == ".mkv" ]; then

        file="$(realpath "$var")"

        full_name=$(echo $file | tr "/" "\n" | tail -n 1)

        vlc -I dummy -vvv "$file" --sout="#transcode{acodec=aac,ab=192,channels=1,deinterlace}:standard{access=file,mux=mp4,dst=""$full_name".mp4"}" vlc://quit
        rm "$file"
    fi

done

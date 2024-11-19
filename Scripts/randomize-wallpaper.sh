#!/bin/bash

current="00-current.jpg"
path="~/Wallpapers/"
current_path="$path$current"

ls $path | sort -R | tail -$N | while read file; do
	#echo "source: $file"
	#echo "target: $path" + "current.jpg"
	cp "$path$file" "$current_path"
	break
done

wal -i "$current_path" -n
swww img "$current_path" --transition-type random
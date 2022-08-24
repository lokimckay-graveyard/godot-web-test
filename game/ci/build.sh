#!/bin/bash 

GODOT_BIN=Godot_v3.5-stable_win64.exe
ROOT_DIR=$(dirname $(dirname $(dirname $(realpath "$0"))))

echo "> Cleaning $ROOT_DIR/site/public/game/*"

rm $ROOT_DIR/site/public/game*

echo "> Building"

$GODOT_BIN --no-window --path $ROOT_DIR/game --export HTML5 $ROOT_DIR/site/public/game.html
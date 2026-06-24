#!/usr/bin/env nu

let themes_dir = ($env.LOCALAPPDATA | path join "Programs" "oh-my-posh" "themes")

mkdir $themes_dir

cp ./config/oh-my-posh.nu ($env.USERPROFILE | path join ".oh-my-posh.nu")

cp ./config/omp-themes/cobalt2.omp.json ($themes_dir | path join "cobalt2.omp.json")
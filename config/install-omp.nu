#!/usr/bin/env nu

let themes_dir = $"($env.LOCALAPPDATA)\Programs\oh-my-posh\themes"

# ensure oh-my-posh directory structure exists
mkdir $themes_dir

# copy oh-my-posh config
cp ./config/oh-my-posh.nu $"($env.USERPROFILE)\.oh-my-posh.nu"

# copy cobalt2 theme
cp ./config/omp-themes/cobalt2.omp.json $"($themes_dir)\cobalt2.omp.json"
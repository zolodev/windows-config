#!/usr/bin/env nu

# copy oh-my-posh config
cp ./config/oh-my-posh.nu $"($env.HOMEPATH)\.oh-my-posh.nu"

# ensure themes folder exist
mkdir $"($env.LOCALAPPDATA)\Programs\oh-my-posh\themes"

# copy cobalt theme to folder
cp ./config/omp-themes/cobalt2.omp.json $"($env.LOCALAPPDATA)\Programs\oh-my-posh\themes\cobalt2.omp.json"
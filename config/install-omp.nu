#!/usr/bin/env nu

# Kopiera oh-my-posh config
cp ./config/oh-my-posh.nu $"($env.HOMEPATH)\.oh-my-posh.nu"

# Säkerställ att themes-mappen finns
mkdir $"($env.LOCALAPPDATA)\Programs\oh-my-posh\themes"

# Kopiera cobalt theme från repo till rätt plats
cp ./config/omp-themes/cobalt2.omp.json $"($env.LOCALAPPDATA)\Programs\oh-my-posh\themes\cobalt2.omp.json"

# Sätt env-variabeln (för nuvarande session)
$env.POSH_THEME = $"($env.LOCALAPPDATA)\Programs\oh-my-posh\themes\cobalt2.omp.json"
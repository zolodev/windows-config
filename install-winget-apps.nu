#!/usr/bin/env nu

winget import winget-apps.txt
winget upgrade --all --include-unknown
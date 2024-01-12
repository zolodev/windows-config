#!/usr/bin/env nu

winget import -i ./winget-apps.txt
winget upgrade --all
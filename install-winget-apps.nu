#!/usr/bin/env nu

winget import winget-apps.json --accept-package-agreements --accept-source-agreements --verbose
winget upgrade --all --include-unknown --verbose
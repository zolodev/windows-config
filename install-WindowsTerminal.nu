#!/usr/bin/env nu

#
# WORK IN PROGRESS!
#

let base = $"($env.LOCALAPPDATA)\\Packages\\";
cd $base;
let findDynamicFolder = ls | where name =~ "WindowsTerminal" | get name.0 | path join "LocalState";
cd $findDynamicFolder 
ls

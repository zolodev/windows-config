#!/usr/bin/env nu
#****************************************************************************#
# Filename      : install-WindowsTerminal.nu
# Created       : Sat Jun 01 2024
# Author        : Zolo
# Github        : https://github.com/zolodev
# Description   : This file can be runned using nushell
#                 To backup and install Windows Terminal configurations.
#               Usage:
#                   > nu install-WindowsTerminal.nu <install> | <backup>
#****************************************************************************#


# Base path variables
let CWD = $env.PWD
let base = $"($env.LOCALAPPDATA)\\Packages\\";

# Getting the dynamic folder for appPath
cd $base;
let findDynamicFolder = ls | where name =~ "WindowsTerminal" | get name.0 | path join "LocalState";

# Setting the application path and the path to the backup-folder
let appPath = $base | path join $findDynamicFolder;
let backupPath = $CWD | path join "WindowsTerminal"

# Backup Windows Terminal config-files
def "main backup" [] {
    print "Backing up Windows Terminal configuration files..."
    cd $appPath
    ls | each { |f| cp $"($appPath | path join $f.name )" $"($backupPath)"};
    print "Finished backing up!"
}

# Installing the Windows terminal config-files
def "main install" [] {
    print "Installing..."
    cd $backupPath
    ls | each { |f| cp $"($backupPath | path join $f.name )" $"($appPath)"};
    print "Finished installing!"
}

# Print help messages if no argument is provided
def main [] {
    print "\tUse either 'backup' or 'install' as an argument!"
    print "\tExample:"
    print "\t\u{25b6} nu install-WindowsTerminal.nu backup"
    print "\tOr:"
    print "\t\u{25b6} nu install-WindowsTerminal.nu install"
}
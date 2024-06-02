#!/usr/bin/env nu
#****************************************************************************#
# Filename      : install-winget-apps.nu
# Created       : Sun Jun 02 2024
# Author        : Zolo
# Github        : https://github.com/zolodev
# Description   : Run the following file as a normal user to install apps.
#****************************************************************************#


# Importing apps from file
def "main import" [] {
    winget import -i winget-apps.json --accept-package-agreements --accept-source-agreements --verbose;
}

# Upgrading installed packages
def "main upgrade" [] {
    winget upgrade --all --include-unknown --verbose;
}

def main [] {
    print "Importing packages...";
    main import;
    
    print "Upgrading packages...";
    main upgrade
    print "Finished!";
}
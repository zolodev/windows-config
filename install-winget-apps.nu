#!/usr/bin/env nu

def "main import" [] {
    winget import -i winget-apps.json --accept-package-agreements --accept-source-agreements --verbose;
}
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
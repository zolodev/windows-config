# /*****************************************************************************
# * Filename      : install.ps1
# * Created       : Sun Jun 02 2024
# * Author        : Zolo
# * Github        : https://github.com/zolodev
# * Description   : One script to rule them all!
# *****************************************************************************/

# Install Windows Terminal
winget install "Microsoft.WindowsTerminal"

# Install Nushell
winget install Nushell.Nushell

# Sourcing in the PATH, to get the nushell to work
$env:Path = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path", "User")

# Copy Nushell config file
Write-Output "Copy Nushell config.nu!"
nu ./config/install-config.nu 

# Copy Nushell oh-my-posh config file
Write-Output "Copy Nushell oh-my-posh configuration!"
nu ./config/install-omp.nu 

# Installing WindowsTerminal configuration
Write-Output "Installing WindowsTerminal configuration!"
nu ./config/WindowsTerminal.nu install 

# Installing minimum winget apps
Write-Output "Installing Minimum Winget Apps!"
nu ./config/install-winget-apps.nu install-min
nu ./config/install-winget-apps.nu upgrade
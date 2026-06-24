# /*****************************************************************************
# * Filename      : install.ps1
# * Created       : Sun Jun 02 2024
# * Author        : Zolo
# * Github        : https://github.com/zolodev
# * Description   : One script to rule them all!
# *****************************************************************************/

# Check if winget is available
if (-not (Get-Command winget -ErrorAction SilentlyContinue)) {
    Write-Error "winget is not installed. Please install App Installer from the Microsoft Store:"
    Write-Error "https://apps.microsoft.com/detail/9NBLGGH4NNS1?hl=en-us&gl=SE&ocid=pdpshare"
    exit 1
}

# Install Windows Terminal
winget install "Microsoft.WindowsTerminal"

# Install Nushell
winget install Nushell.Nushell

# Sourcing in the PATH, to get the nushell to work
$env:Path = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path", "User")

# Installing ALL winget apps (must run before config steps that depend on installed apps)
Write-Output "Installing ALL Winget Apps!"
nu ./config/install-winget-apps.nu install-full
nu ./config/install-winget-apps.nu upgrade

# Refresh PATH after winget installations
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
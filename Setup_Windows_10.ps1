# Install Winget
Add-AppxPackage -RegisterByFamilyName -MainPackage Microsoft.DesktopAppInstaller_8wekyb3d8bbwe

# Microsoft Store Update
$namespaceName = "root\cimv2\mdm\dmmap"
$className = "MDM_EnterpriseModernAppManagement_AppManagement01"
$wmiObj = Get-WmiObject -Namespace $namespaceName -Class $className
$result = $wmiObj.UpdateScanMethod()

# Install All Programs
winget install -e --disable-interactivity --id gerardog.gsudo;winget install -e --disable-interactivity --id IZArc.IZArc;winget install -e --disable-interactivity --id Git.Git;winget install -e --disable-interactivity --id Valve.Steam;winget install -e --disable-interactivity --id Discord.Discord;winget install -e --disable-interactivity --id Mozilla.Firefox.ESR;winget install -e --disable-interactivity --id Elgato.StreamDeck;winget install -e --disable-interactivity --id Logitech.GHUB;winget install -e --disable-interactivity --id Mozilla.Thunderbird;winget install -e --disable-interactivity --id Docker.DockerDesktop;winget install -e --disable-interactivity --id Microsoft.PowerToys;winget install -e --disable-interactivity --id Microsoft.WindowsTerminal;winget install -e --disable-interactivity --id Spotify.Spotify;winget install -e --disable-interactivity --id Apple.iTunes;winget install -e --disable-interactivity --id CoreyButler.NVMforWindows;winget install -e --disable-interactivity --id Ngrok.Ngrok;winget install -e --disable-interactivity --id Microsoft.VisualStudioCode

# Update all Programms
winget update --all --disable-interactivity

# Install OhMyPosh
winget install JanDeDobbeleer.OhMyPosh -s winget

# Install Node
nvm install lts
nvm use lts

# Install pnpm
corepack enable
corepack prepare --activate pnpm@latest

# Setup global Store for pnpm
pnpm setup

# Setup global git config
git config --global user.email "chrissi.klausschulz@gmail.com"
git config --global user.name "Christopher Schulz"
git config --global init.defaultBranch main

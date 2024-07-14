# copy some usefull scripts to nushell
cp refreshenv.nu ($nu.config-path | path dirname)
$"\nsource ($nu.config-path | path dirname | path join refreshenv.nu)\n" | save $nu.config-path --append

source refreshenv.nu

# install scoop packages
print "Installing scoop packages"
scoop install git
print "adding extras"
scoop bucket add extras
scoop install ninja 7zip activate-linux bun cacert clangd cmake dark fastfetch ffmpeg fzf gh Ghostscript git gsudo helix innounp llvm lua-language-server mingw mpv neofetch neovim nodejs nssm nuget oculante pipx python rust-analyzer shawl vcredist vcredist2005 vcredist2008 vcredist2010 vcredist2012 vcredist2013 wget zoxide

refreshenv

# copy helix configuration
print "helix cfg"
cp --recursive ./helix $env.APPDATA

# install pdm packages
print "pipx install"
pipx install pdm pylsp-mypy python-lsp-ruff python-lsp-server textual-paint yt-dlp

refreshenv

# updating wsl
print "update wsl"
wsl --update

winget install Canonical.Ubuntu.2204

# TODO: Arch setup

# I think i can do it better, but i`m to lazy to read documentation
winget install Microsoft.WindowsTerminal.Preview
winget install Microsoft.DevHome
winget install CharlesMilette.TranslucentTB
winget install Microsoft.VisualStudioCode
winget install Telegram.TelegramDesktop
winget install Obsidian.Obsidian
winget install Rustlang.Rustup
winget install Discord.Discord
winget install qBittorrent.qBittorrent
winget install Valve.Steam
winget install Google.Chrome.EXE
winget install OpenVPNTechnologies.OpenVPNConnect
winget install Nvidia.GeForceExperience
winget install WerWolv.ImHex
winget install CrystalDewWorld.CrystalDiskInfo
winget install ShareX.ShareX
winget install 7zip.7zip

refreshenv

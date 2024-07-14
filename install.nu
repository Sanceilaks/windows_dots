# copy some usefull scripts to nushell
cp refreshenv.nu ($nu.config-path | path dirname)
$"\nsource ($nu.config-path | path dirname | path join refreshenv.nu)\n" | save $nu.config-path --append

source refreshenv.nu

# install scoop packages
scoop bucket add main
scoop bucket add extras
scoop install ninja 7zip activate-linux bun cacert clangd cmake dark fastfetch ffmpeg fzf gh Ghostscript git gsudo helix innounp llvm lua-language-server mingw mpv neofetch neovim nodejs nssm nuget oculante pipx python rust-analyzer shawl vcredist vcredist2005 vcredist2008 vcredist2010 vcredist2012 vcredist2013 wget zoxide

refreshenv

# copy helix configuration
cp --recursive ./helix $env.APPDATA

# install pdm packages
pipx install pdm pylsp-mypy python-lsp-ruff python-lsp-server textual-paint yt-dlp

refreshenv

# updating wsl
wsl --update

winget install Canonical.Ubuntu.2204

# TODO: Arch setup

# Ubuntu / POP_OS Dotfiles

My personal set-up scripts

## Included `scripts/`

### Comment lines in programs.sh to avoid duplication

- `symlink.sh` sets up symbolic links in `$HOME`
- `aptinstall.sh` owns Ubuntu repository installs
- `programs.sh` leverages progressive command line installation of other software

## Installation 
```bash
git clone https://github.com/javierrh2812/dotfiles
cd dotfiles
./install.sh
```

# Gnome extensions 
1. Clipboard indicator
2. Emoji selector
3. Simple Task Bar
4. Sound Input & Output Device Choooser
5. User themes

## TODO 
- [x] move rm docker to docker file
- [x] missing: nvm install node
- [x] node not executable message when opens neovim
- [ ] allow select what programs install
- [ ] vim icons error (add scripts to download a nerd font, to use vim devicons) 
- [ ] Fix albert installation


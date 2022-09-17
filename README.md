# .dotfiles
All my .dotfiles in one place 😀

Easily set up a development environment on a fresh machine!

## Installation steps

1. Clone this repository to your machine
2. `cd .dotfiles`
3. Make sure `install.sh` has execution premmisions
    - If not, run `chmod +x install.sh`
4. Run `./install.sh`
5. Open a new terminal session

And that's it 😜

### Additions

#### nvim
- Couldn't find a way to autoinstall language parsers for treesiter in `nvim`
- Inside `nvim` run `:TSInstall <language>` to install a language parser
- To see all supported languages run `:TSInstallInfo`

#### font
- Couldn't find a way to auto setup the `Hack Nerd Font` as the default terminal font.
- Change the font manually in the terminal's preferences to enjoy the full experience of the terminal using icons.
- To see the added fonts go to `~/.local/share/fonts`

### Small issues

- installing `nvim` plugins in `--headless` causes error output, but **doesn't** break installation

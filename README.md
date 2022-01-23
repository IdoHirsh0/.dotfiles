# .dotfiles
All my .dotfiles in one place 😀

Easily set up a development environment on a fresh machine!

## Installation steps

1. Clone this repository to your `home` directory
2. `cd .dotfiles`
3. Make sure `install.sh` has execution premmisions
4. Run `./install.sh`

And that's it 😜

### Additions

- Couldn't find a way to autoinstall language parsers for treesiter in `nvim`
- Inside `nvim` run `:TSInstall <language>` to install a language parser
- To see all supported languages run `:TSInstallInfo`

### Small issues

- installing `nvim` plugins in `--headless` causes error output, but **doesn't** break installation


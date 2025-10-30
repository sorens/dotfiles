# sorens dotfiles

## install

```sh
git clone https://github.com/sorens/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
# set up dotfiles
script/bootstrap
# reload! all the paths and ENV variables
reload!
# run this script at the start and periodically to install/update
bin/dot
```

This will symlink the appropriate files in `.dotfiles` to your home directory.
Everything is configured and tweaked within `~/.dotfiles`.

The main file you'll want to change right off the bat is `zsh/zshrc.symlink`,
which sets up a few paths that'll be different on your particular machine.

## topical

Everything's built around topic areas. If you're adding a new area to your
forked dotfiles — say, "Java" — you can simply add a `java` directory and put
files in there. Anything with an extension of `.zsh` will get automatically
included into your shell. Anything with an extension of `.symlink` will get
symlinked without extension into `$HOME` when you run `script/bootstrap`.

## components

There's a few special files in the hierarchy.

- `bin/`
  - Anything in `bin/` will get added to your `$PATH` and be made available everywhere.
- `topic/\*.zsh`
  - Any files ending in `.zsh` get loaded into your environment.
- `topic/path.zsh`
  - Any file named `path.zsh` is loaded first and is expected to setup `$PATH` or similar.
- `topic/completion.zsh`
  - Any file named `completion.zsh` is loaded last and is expected to setup autocomplete.
- `topic/\*.symlink`
  - Any files ending in `*.symlink` get symlinked into your `$HOME`.
  - You can keep all of those versioned in your dotfiles but still keep those autoloaded files in your home directory.
  - These get symlinked in when you run `script/bootstrap`.

## git commit signing via ssh key

- https://calebhearth.com/sign-git-with-ssh

note: Tower can override some settings and break signing.

```sh
git config --global commit.gpgsign true
git config --global gpg.format ssh
ssh-add -L
git config --global user.signingkey "ssh-ed25519 <your key id>"
```

## go language download

note: go can (should) now be installed via `mise` by creating `.tool-versions` files where appropriate.

```
go 1.24.4
```

- https://go.dev/dl/

## macOS defaults

note: macOS 15.5, defaults for Safari and Mail are no longer possible. Perhaps this happened. 🤷🏻

- https://macos-defaults.com

## fonts

The `fonts/install.sh` script will download additional fonts. You will need to install them manually. Some of the fonts to be downloaded:

- [Source Code Pro @ google](https://fonts.google.com/download?family=Source%20Code%20Pro)
- [SF Pro @ apple](https://devimages-cdn.apple.com/design/resources/download/SF-Pro.dmg)
- [SF Compact @ apple](https://devimages-cdn.apple.com/design/resources/download/SF-Compact.dmg)
- [SF Mono @ apple](https://devimages-cdn.apple.com/design/resources/download/SF-Mono.dmg)
- [NY @ apple](https://devimages-cdn.apple.com/design/resources/download/NY.dmg)

```sh
~/.dotfiles/fonts/install.sh
```

## apps

The `apps/install.sh` script will download additional applications. You will need to install them manually. Some of the apps to be downloaded:

- [Tower.zip](https://www.git-tower.com/apps/tower3-mac/497-3c2a101a/Tower-14.5-497.zip)
- [Kaleidoscope.zip](https://kaleidoscope.app/download-v3)
- [zed.dmg](https://zed.dev/download-success?asset=Zed-aarch64.dmg&version=0.210.4&channel=stable)

```sh
~/.dotfiles/apps/install.sh
```

## thanks

- original fork from @codykrieger [dotfiles](https://github.com/codykrieger/dotfiles)

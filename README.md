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

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your
  environment.
- **topic/path.zsh**: Any file named `path.zsh` is loaded first and is
  expected to setup `$PATH` or similar.
- **topic/completion.zsh**: Any file named `completion.zsh` is loaded
  last and is expected to setup autocomplete.
- **topic/\*.symlink**: Any files ending in `*.symlink` get symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `script/bootstrap`.

## git commit signing via ssh key
* https://calebhearth.com/sign-git-with-ssh

note: Tower can override some settings and break signing.

```shell
$ git config --global commit.gpgsign true
$ git config --global gpg.format ssh
$ ssh-add -L
$ git config --global user.signingkey "ssh-ed25519 <your key id>"
```

## go language download
* https://go.dev/dl/

## macOS defaults
* https://macos-defaults.com

## fonts
Run the `os-x/fonts.sh` script to additional download fonts. You will need to install them manually. The fonts to be downloaded:
* https://fonts.google.com/download?family=Source%20Code%20Pro
* https://devimages-cdn.apple.com/design/resources/download/SF-Pro.dmg
* https://devimages-cdn.apple.com/design/resources/download/SF-Compact.dmg
* https://devimages-cdn.apple.com/design/resources/download/SF-Mono.dmg
* https://devimages-cdn.apple.com/design/resources/download/NY.dmg

```sh
$ ~/.dotfiles/os-x/fonts.sh
```

## thanks
* original fork from @codykrieger [dotfiles](https://github.com/codykrieger/dotfiles)
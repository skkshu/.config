SYNOPSIS
  lesskey /path/to/keybindings

DESCRIPTION
  /usr/bin/lesskey is used to specify a set of key bindings to be used by less.

  Customizing the keybinding for `less` is straightforward:
make a keybindings file and run `lesskey` on it.
It will generate a binary file called ``.less`` in your home directory,
and `less` will apply those customizations each time it runs.

EXAMPLE
```sh
lesskey ~/.config/lesskey/keybindings
```

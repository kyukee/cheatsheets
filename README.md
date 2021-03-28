# navi cheatsheets

My personal cheatsheets for [navi](https://github.com/denisidoro/navi).

### Browsing community cheatsheet repositories

You can find cheatsheet repositories with:
```sh
navi repo browse
```

### Importing private cheatsheets

You can import cheatsheets from any git repository that includes `.cheat` files:
```sh
navi repo add https://github.com/denisidoro/cheats
```

### Using cheatsheets from other tools

You can use cheatsheets from [tldr](https://github.com/tldr-pages/tldr) by running:
```sh
navi --tldr <query>
```

You can use cheatsheets from [cheat.sh](https://github.com/chubin/cheat.sh) by running:
```sh
navi --cheatsh <query>
```

### Setup navi on a fresh installation

1. Clone this repository

  ```sh
  git clone https://github.com/kyukee/cheatsheets
  ```

2. Install the binary to your system

  ```sh
  cd cheatsheets
  sudo make
  ```

3. Open your *.zshrc*, and export *CHEATSHEETS_PATH* with the path to the cloned repository

  ```sh
  export CHEATSHEETS_PATH="$HOME/path/to/folder"
  ```

4. You can now use this application with the following command:

  ```sh
  cheat
  ```

5. (Optional) To use the navi shell widget, add this line to your `.bashrc`-like file:

  ```sh
  # bash
  eval "$(navi widget bash)"

  # zsh
  eval "$(navi widget zsh)"

  # fish
  navi widget fish | source
  ```

  By default, `Ctrl+G` is assigned to launching **navi**.

### Utilities

| Name     | Use                                    |
|:--------:|:--------------------------------------:|
| howdoi   | Get online answers to coding questions |
| navi     | Search for actions and commands        |
| tldr     | Search help pages for a command        |
| cheat.sh | Same as tldr                           |

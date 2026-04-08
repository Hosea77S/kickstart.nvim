# Overview

Neovim setup for Hosea

# Dependencies

1. Access to github
2. Node.js and npm
    - `curl -fsSL https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash`
    - `source ~/.bashrc`
    - `nvm install --lts` for the lts version of node
    - `nvm use --lts` to set the default version of node to lts
3. gcc and g++ (maybe Llvm for clang, too)
4. install tree sitter cli:
    - `npm install -g tree-sitter-cli`

# Install nerdfont for linux

In Linux, you do:

1. Download (any) Nerdfont.

2. Extract with `unzip nerdfont.zip -d /destination/`

3. put the extracted folder into `/usr/.local/share/fonts` if you want them to be installed only to your user, or `/usr/share/fonts` if you want them installed globally.

4. Rebuild font cache by running `fc-cache -f -v`

5. Now if you open preferences in your terminal, you should be able to select the font you just installed.



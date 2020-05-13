# hadolint-shim

Provides `bash` compatible shim that wraps hadolint's `docker run hadolint/hadolint` execution to ease up usage
on system where `hadolint` provides no static binaries.

## Installation

### One liner

- regular user: ```curl  -sSL https://git.io/JfcCJ | PREFIX=~/.local bash /dev/stdin```
- **root** user: ```curl  -sSL https://git.io/JfcCJ | PREFIX=/usr/local sudo bash /dev/stdin```

### Direct

`curl -sSL https://raw.githubusercontent.com/kornicameister/hadolint-shim/master/hadolint -o $HOME/.local/bin/hadolint ; chmod +x $HOME/.local/bin/hadolint ; bash -c 'hadolint --version'`

This is fastest installation method but be **warned** that it assumes that `$HOME/.local/.bin`:

- exists
- is added to `$PATH`

## Usage

Exactly same as in [here](https://github.com/hadolint/hadolint#how-to-use)

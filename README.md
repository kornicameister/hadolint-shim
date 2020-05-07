# hadolint-shim
Provides `bash` compatible shim that wraps hadolint docker execution

## Installation

### One liner

`curl -sSL https://raw.githubusercontent.com/kornicameister/hadolint-shim/master/hadolint -o $HOME/.local/bin/hadolint ; chmod +x $HOME/.local/bin/hadolint ; bash -c 'hadolint --version'`

This is faster installation method but be **warned** that it assumes that `$HOME/.local/.bin`:
- exists
- is added to `$PATH`

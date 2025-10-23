# kimi-cli Zsh Plugin

`kimi-cli` Zsh plugin is a Zsh plugin that integrate Kimi CLI into Zsh.

## Usage

- Press `Ctrl-K` in Zsh to start talking to Kimi CLI.
- Press `Ctrl-K` again to exit Kimi CLI mode.

## Requirements

- Zsh 5.4+
- `kimi` binary available in `$PATH`

## Installation

Pick the method that matches your Zsh setup.

### Manual (`.zshrc`)

```zsh
# clone anywhere you prefer
git clone https://github.com/MoonshotAI/zsh-kimi-cli.git ~/.zsh/kimi-cli

# load the plugin in .zshrc
source ~/.zsh/kimi-cli/kimi-cli.plugin.zsh
```

Open a new shell (or `exec zsh`) to activate the handler.

### Oh My Zsh

```zsh
git clone https://github.com/MoonshotAI/zsh-kimi-cli.git \
  ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/kimi-cli

# in ~/.zshrc
plugins=(... kimi-cli)
```

Reload Zsh to pick up the plugin.

### Antigen

```zsh
antigen bundle MoonshotAI/zsh-kimi-cli
antigen apply
```

### Zinit

```zsh
zinit light MoonshotAI/zsh-kimi-cli
```

### Znap

```zsh
znap source MoonshotAI/zsh-kimi-cli
```

### Fig

```zsh
fig plugin install MoonshotAI/zsh-kimi-cli
```

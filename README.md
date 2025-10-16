# kimi-fallback Zsh Plugin

`kimi-fallback` is a lightweight Zsh plugin that forwards unknown commands to the Kimi CLI. When a command is not found, the plugin formats the original invocation and runs `kimi -c "<command …>"`. If `kimi` is absent, control falls back to any previously defined `command_not_found_handler`.

## Requirements

- Zsh 5.4+
- `kimi` binary available in `$PATH`

## Installation

Pick the method that matches your Zsh setup.

### Manual (`.zshrc`)

```zsh
# clone anywhere you prefer
git clone https://github.com/stdrc/zsh-kimi-fallback.git ~/.zsh/kimi-fallback

# load the plugin in .zshrc
source ~/.zsh/kimi-fallback/kimi-fallback.plugin.zsh
```

Open a new shell (or `exec zsh`) to activate the handler.

### Oh My Zsh

```zsh
git clone https://github.com/stdrc/zsh-kimi-fallback.git \
  ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/kimi-fallback

# in ~/.zshrc
plugins=(... kimi-fallback)
```

Reload Zsh to pick up the plugin.

### Antigen

```zsh
antigen bundle stdrc/zsh-kimi-fallback
antigen apply
```

### Zinit

```zsh
zinit light stdrc/zsh-kimi-fallback
```

### Znap

```zsh
znap source stdrc/zsh-kimi-fallback
```

### Fig

```zsh
fig plugin install stdrc/zsh-kimi-fallback
```

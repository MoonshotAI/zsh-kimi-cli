# Fallback to kimi when a command is not found.

# Preserve any previously defined handler so we can delegate if needed.
if (( $+functions[command_not_found_handler] )); then
  functions[__kimi_original_command_not_found_handler]=$functions[command_not_found_handler]
fi

command_not_found_handler() {
  emulate -L zsh

  local missing_command="$1"
  local -a cmd_with_args=("$@")

  # Nothing to do without a command name.
  if [[ -z "$missing_command" ]]; then
    if (( $+functions[__kimi_original_command_not_found_handler] )); then
      __kimi_original_command_not_found_handler "$@"
      return $?
    fi
    return 127
  fi

  # Avoid recursion if kimi itself is missing.
  if [[ "$missing_command" == "kimi" ]]; then
    if (( $+functions[__kimi_original_command_not_found_handler] )); then
      __kimi_original_command_not_found_handler "$@"
      return $?
    fi
    print -u2 "kimi: command not found"
    return 127
  fi

  if ! command -v kimi >/dev/null 2>&1; then
    if (( $+functions[__kimi_original_command_not_found_handler] )); then
      __kimi_original_command_not_found_handler "$@"
      return $?
    fi
    print -u2 "kimi: command not found; unable to handle '$missing_command'."
    return 127
  fi

  local full_cmd
  full_cmd="$(printf '%q ' "${cmd_with_args[@]}")"
  full_cmd="${full_cmd% }"

  kimi -c "$full_cmd"
  return $?
}

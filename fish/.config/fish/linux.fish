# Make alt in Linux behave like in macOS
bind alt-backspace backward-kill-word
bind alt-delete kill-word
bind alt-left backward-word
bind alt-right forward-word

# Automatically connect to ssh-agent
set -gx SSH_AUTH_SOCK "$XDG_RUNTIME_DIR/ssh-agent.socket"

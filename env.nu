export-env {
	load-env {SSH_AUTH_SOCK: (gpgconf --list-dirs agent-ssh-socket | str trim)}
}

export-env {
	let-env SSH_AUTH_SOCK = (gpgconf --list-dirs agent-ssh-socket | str trim)
}

def 'complete host' [] {
	(
		cat '~/.ssh/config' | lines
		| parse -r '^Host (?P<host>[^\*]*)$'
	).host
}

export extern ssh [
	-4 # force IPv4
	-6 # force IPv6
	-A # Enables forwarding of connections from an authentication agent
	-a # Disables forwarding of the authentication agent connection
	-B: string # Bind to the address of bind_interface before attempting to connect
	-b: string # Use bind_address on the local machine as the source address
	-C # Requests compression of all data
	-c: string # Selects the cipher specification for encrypting the session
	-D: string # Specifies a local “dynamic” application-level port forwarding
	-E: path   # Append debug logs to log_file instead of standard error.
	-e: string # Sets the escape character for sessions with a pty
	-F: path   # Specifies an alternative per-user configuration file
	-f # Requests ssh to go to background just before command execution
	-G # Print configuration after evaluating Host and match blocks and exit
	-g # Allows remote hosts to connect to local forwarded ports
	-I: string # Specify the PKCS#11 shared library ssh should use
	-i: path   # Identity-File (private key)
	-J: string@'complete host' # Jumphost
	-K # Enables GSSAPI-based authentication and forwarding
	-k # Disables forwarding (delegation) of GSSAPI credentials
	-L: string # Forwarding… (read --help)
	-l: string # login name
	-M # Places the ssh client into “master” mode for connection sharing
	-m: string # A comma-separated list of MAC algorithms
	-N # Do not execute a remote command
	-n # disable reading stdin
	-O: string # Control an active connection multiplexing master process
	-o: string # give option in config-file format
	-p: int    # port
	-Q: string # Queries ssh for the algorithms supported for the specified version
	-q # quiet mode
	-R: string # Forwarding (read --help)
	-S: string # Specifies the location of a control socket for connection sharing
	-s # May be used to request invocation of a subsystem on the remote host
	-T # Disable pseudo-terminal allocation.
	-t # Force pseudo-terminal allocation.
	-V # version
	-v # verbose mode
	-W: string # forward stdin and stdout do <host:port>
	-w: string # tunnel (read --help)
	-X # enable X11 forwarding
	-x # disable X11 forwarding
	-Y # Enables trusted X11 forwarding
	-y # Send log information using the syslog
	host: string@'complete host'
	...command: string
]

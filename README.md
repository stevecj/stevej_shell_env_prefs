stevej_shell_env_prefs
======================

Quickly sets up my shell preferences on a new OS X or Linux user account

This project provides a means of automatically configuring my favorite
command line environment setup for a new user account on OS X or Linux.

To apply to configuration, run run ./install.sh from within the project
directory.

The install script tried to be sufficiently idempotent that it is safe to
re-run in order to apply updates after pulling an updated revision of the
project. Also, original copies of modified files are backed up into a
`~/.backup.conf.<datetime>` directory.

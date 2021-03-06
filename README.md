# IBM i BASH Tools

A collection of helpful and easy to install bash scripts for the IBM i.

## Setup

To setup these bash scripts and use them, just use the provided [`setup`](setup) file at the root of this project.

```bash
cd /path/to/ibmi-bash-tools
./setup <optional-path>
```

The setup script accepts an option path to symlink the scripts. It will try to place the scripts in `~/bin` by default.
Symlinking them allows them to be updated anytime the files in this project are updated. Wherever they end up being
symlinked, make sure that directory is in the user's `PATH` BASH environment variable. This can be done like so in a
bash configuration like so:

```bash
#!/bin/bash
# ~/.bashrc

PATH=$PATH:~/bin
```

## Current Tools

#### [apachectl.sh](bin/apachectl.sh)

A script that mimics the [`apachectl`](https://httpd.apache.org/docs/2.4/programs/apachectl.html) CLI on &ast;nix
systems. It currently only has `start`, `stop`, and `restart` as implemented options. Unlike the original `apachectl`,
the user needs to specify a server to target, as the IBM i has multiple instances of Apache.

Use: `apachectl.sh start|stop|restart <server>`

e.g. `apachectl.sh restart zendsvr6`

#### [db2.sh](bin/db2.sh)

A script that behaves like other SQL CLIs. The user can repeatedly run SQL statements until they enter `exit` or
`exit;`. It even supports history, so the user can use the up and down arrows to cycle through past SQl statements.

Use: `db2.sh`

e.g. `db2.sh`

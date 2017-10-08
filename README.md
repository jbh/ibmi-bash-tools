# ibmi-bash-tools

A collection of helpful and easy to install bash scripts.

## Current Tools

#### [apachectl](bin/apachectl.sh)

A script that mimics the [`apachectl`](https://httpd.apache.org/docs/2.4/programs/apachectl.html) CLI on &ast;nix
systems. It currently only has `start`, `stop`, and `restart` as implemented options. Unlike the original `apachectl`,
the user needs to specify a server to target, as the IBM i has multiple instances of Apache.

Use: `apachectl.sh start|stop|restart <server>`

e.g. `apachectl.sh restart zendsvr6`

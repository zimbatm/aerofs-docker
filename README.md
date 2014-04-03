AeroFS docker container
=======================

Installs the AeroFS Team Server (see: https://www.aerofs.com/downloading_team_server?os=linux)

I've yet to make it working so configuration is WIP.

## STATUS: WIP

TODO
----

Getting `123259.763E main @Lx, FATAL:java.lang.Exception: Unsupported OS Family or arch` in /home/aerofs/.aerofsts/cli.log

According to Aerofs' support, the system is detected using Java's
`System.getProperty("os.name");`. I should probably make a little java program
to see what's the output on these docker containers.


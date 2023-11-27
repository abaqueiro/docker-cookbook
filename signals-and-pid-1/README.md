# Docker main process and signals

Signals are a fundamental mechanism for interprocess comunication in systems, this messages
are sended by other process or by the OS kernel to a process to communicate and event or request.

The important signals for this demo are **SIGTERM**, **SIGINT**, and **SIGKILL**

In docker only the main process receives the signals from the docker daemon,
all the other process started are not informed.

**SIGINT** is the signal you send for interruption, for an interactive console is when you press Ctrl-c

**SIGTERM** is the signal to terminate the process.

**SIGKILL** this signal can not be intercepted or stopped, is a forced inmediate termination.

To run the example first just build the image

```bash
./build.sh
```

Then just run it

```bash
./run.sh
```

An incremental counter will be printed every second. You can interrupt in the same terminal using Ctrl-c

Or you can try sending signals from the docker daemon from other terminal

```bash
docker kill -s SIGINT signals-and-pid-1
```

```bash
docker kill -s SIGTERM signals-and-pid-1
```

When the signal is received by the docker-entry.sh, it will print a message with the signal name and terminate
itself.

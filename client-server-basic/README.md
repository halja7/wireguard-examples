# Client / Server configuration

> IMPORTANT: In order for this to work, the container hosts must have the sysctl "net.ipv4.conf.all.src_valid_mark=1" set in the host. For those using `docker-desktop` for Windows or MacOS, this will involve setting this value in the Linux VM running the containers.

+------------------+  +------------------+ +------------------+
|                  |  |                  | |                  |
|  Client 1        |  |  WireGuard       | |  Client 2        |
|  (10.13.13.2)    |  |  Server          | |  (10.13.13.3)    |
|                  |  |  (10.13.13.1)    | |                  |
|                  |  |                  | |                  |
+--------+---------+  +--------+---------+ +--------+---------+
         |                     |                    |
         |                     |                    |
         |                     |                    |
         +----+----------------+--------------+-----+
              |            WireGuard          |
              |            Interface          |
              |            wg0                |
              +-------------------------------+
                        VPN Tunnel

# Quick Start

Start the containers
```
docker-compose up -d
```

Test the connection
```
docker exec -it client1 /bin/bash
```

In the container, ping client2
```
ping 10.13.13.3
```



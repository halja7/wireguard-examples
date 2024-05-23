# Chisel TCP/HTTP Tunnel Example

## Overview

+-----------------------------+    +---------------------------------------------+
| internet                    |    | internal                                    |
| +-----------------+      +------------+  +---------------+   +-------------+   |
| |                 |      |            |  |               |   |             |   |
| |     external    |======|            |==|     chisel    |===|  internal   |   |
| |      client     |======|   haproxy  |==|     server    |===|   client    |   |
| |                 |      |            |  |               |   |             |   |
| +-----------------+      +------------+  +---------------+   +-------------+   |
|                             |    |                                             |
+-----------------------------+    +---------------------------------------------+
                                                    LB (ClusterIP) (172.196.8.1/24)


## Setup

Stand up containers
```
docker-compose up --build
```

Test connections
```
# from internal client to external api
docker exec -it chisel_internal_client curl http://chisel_server:8002
```

The internal service can invoke the external API and receive responses.



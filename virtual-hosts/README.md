# Proxy Using Virtual Hosts (Server Blocks)

A proxy example using Virtual Hosts (nginx calls them Server Blocks).

To distinguish your services, you'll need to use the hostname to route to the correct backend service.

Ex.

Caller's request to nginx would look like this:

```
GET /abc
Host: connector-service-1.your.domain.name
```

Backend service's request would look like this:

```
GET /abc
Host: connector-service-1.your.domain.name
Upgrade: something
Connection: upgrade
X-Forwarded-For: 192.168.100.123
X-Forwarded-Proto: http
X-Forwarded-Port: 80
```

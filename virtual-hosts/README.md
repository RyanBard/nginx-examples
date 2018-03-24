# Proxy Using Virtual Hosts (Server Blocks)

A proxy example using Virtual Hosts (nginx calls them Server Blocks).

To distinguish your services, you'll need to use the hostname to route to the correct backend service.

Ex.

Caller's http/https requests to nginx would look like this:

```
GET /abc
Host: connector-service-1.your.domain.name
```

Backend service's http request would look like this:

```
GET /abc
Host: connector-service-1.your.domain.name
X-Forwarded-For: 192.168.100.123
X-Forwarded-Proto: http
X-Forwarded-Port: 80
```

And the backend's https request would look like this:

```
GET /abc
Host: connector-service-1.your.domain.name
X-Forwarded-For: 192.168.100.123
X-Forwarded-Proto: https
X-Forwarded-Port: 443
```

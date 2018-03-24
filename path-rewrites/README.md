# Proxy Using Path Rewrites

A proxy example using url path rewrites.

To distinguish your services, you'll need to use the path on the request to route to the correct backend service.

Ex.

Caller's http/https requests to nginx would look like this:

```
GET /connector-service-1/abc
Host: your.domain.name
```

Backend service's http requests would look like this:

```
GET /abc
Host: your.domain.name
X-Forwarded-For: 192.168.100.123
X-Forwarded-Proto: http
X-Forwarded-Port: 80
X-Forwarded-Path: /connector-service-1
```

And the backend service's https requests would look like this:

```
GET /abc
Host: your.domain.name
X-Forwarded-For: 192.168.100.123
X-Forwarded-Proto: https
X-Forwarded-Port: 443
X-Forwarded-Path: /connector-service-1
```

# docker-nginx-tcp-proxy
To place the AWS Load Balancers in chain.

There are enviromental variables to set:
* SERVER_NAME (default is '_')
* REDIRECT_HOST (default is '$host')
* RESOLVER (default is '8.8.8.8')
* BACKEND_HOST (default is 'www.jetbrains.com')
* BACKEND_PORT (default is '443')
* LISTEN_PORT (default is '443')

Example:
```
docker run -p 8080:8080 -e LISTEN_PORT=8080 jetbrainsinfra/nginx-tcp-proxy
```
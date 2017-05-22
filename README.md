This docker container establishes a [localtunnel](https://github.com/localtunnel/localtunnel) pointing to a configurable endpoint.

The following environment variables need to be populated:

* `LT_LOCAL_HOST` - the host to which the tunnel should point. Set this to a URL in a container to which this container has access to, for instance: `http://my-other-container:8080`
* `LT_PORT` - which port on the host `LT_LOCAL_HOST` the tunnel should be pointed to.
* `LT_SUBDOMAIN` - the subdomain that you want to receive. 
* `LT_HOST` - to which localtunnel server the tunnel should be established. Defaults to `https://localtunnel.me`.

Keep in mind to enable autorestart for the container if you want it to reestablish the tunnel if it dies.

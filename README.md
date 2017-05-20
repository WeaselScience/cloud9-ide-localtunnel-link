This docker container allows you to establish and maintain a localtunnel connection pointing to a linked container.

Simply link this container to a service to which you want to create a localtunnel, and populate the following environment variables:

* `LT_LOCAL_HOST` - the host to which the tunnel should point. It's the hostname of your linked service.
* `LT_PORT` - to which port on `LT_LOCAL_HOST` the tunnel should be established.
* `LT_SUBDOMAIN` - the subdomain that you want to receive.
* `LT_HOST` - to which localtunnel server the tunnel should be established. Defaults to `https://localtunnel.me`

Keep in mind to enable autorestart for the container if you want it to reestablish the tunnel if it dies.

# Puma Sinatra example web application

Run with:

```
$ docker run --rm -it -e PUMA_THREADS=10 -e WORKERS=2 -p 3000:3000 puma-sinatra-example
```

Enjoy:

```
$ curl localhost:3000
Hello World!
```

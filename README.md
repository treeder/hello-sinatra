## Running

Try this app out with:

```
docker run --rm -it -p 8080:8080 treeder/hello-sinatra
```

## Building

### Update gems and vendor them:

```
docker run --rm -it -v $PWD:/app -w /app iron/ruby:dev bundle update
docker run --rm -it -v $PWD:/app -w /app iron/ruby:dev bundle install --standalone --clean
sudo chmod -R a+rw .bundle
sudo chmod -R a+rw bundle
```

### Test:

Test the app before we build the image.

```
docker run -it --rm -v $PWD:/app -w /app -p 8080:8080 iron/ruby ruby app.rb
```

Check http://localhost:8080/ to ensure it's working (or the Docker IP if you're on mac, `docker-machine ip`).

### Build image:

```
docker build -t treeder/hello-sinatra:latest .
```

### Test image:

```
docker run --rm -it -p 8080:8080 treeder/hello-sinatra
```

### Push image:

```
docker push treeder/hello-sinatra
```

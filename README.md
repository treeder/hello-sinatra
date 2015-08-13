## Running

```
docker run --rm -it -p 8080:8080 treeder/hello-sinatra
```

## Building

Update gems and vendor them:

```
docker run --rm -it -v $PWD:/app -w /app treeder/ruby bundle update
docker run --rm -it -v $PWD:/app -w /app treeder/ruby bundle install --standalone --clean
```

Test:

```
docker run -it --rm -v $PWD:/app -w /app -p 8080:8080 treeder/ruby ruby app.rb
```

Build image:

```
docker build -t treeder/hello-sinatra:latest .
```

Push image:

```
docker push treeder/hello-sinatra
```

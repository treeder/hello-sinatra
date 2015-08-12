## Running

```
dj run treeder/hello-sinatra
```

## Building

Update gems and vendor them:

```
dj run treeder/ruby bundle update
dj run treeder/ruby bundle install --standalone --clean
```

Build image:

```
docker build -t treeder/hello-sinatra:latest .
```

Push image:

```
docker push treeder/hello-sinatra
```

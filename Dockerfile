FROM treeder/ruby

WORKDIR /app

ADD . /app

ENTRYPOINT ["ruby", "app.rb"]

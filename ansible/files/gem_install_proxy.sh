#!/bin/bash

#un comment and edit next line as required
#export HTTP_PROXY="<your_HTTP_PROXY>"

gem install --http-proxy $HTTP_PROXY builder -v 2.1.2
gem install --http-proxy $HTTP_PROXY bundler
gem install --http-proxy $HTTP_PROXY god
gem install --http-proxy $HTTP_PROXY fastimage
gem install --http-proxy $HTTP_PROXY diff-lcs -v 1.1.2
gem install --http-proxy $HTTP_PROXY json -v 1.4.6
gem install --http-proxy $HTTP_PROXY term-ansicolor -v 1.0.5
gem install --http-proxy $HTTP_PROXY curb -v 0.7.15
gem install --http-proxy $HTTP_PROXY mime-types -v 1.16
gem install --http-proxy $HTTP_PROXY nokogiri -v 1.4.4
gem install --http-proxy $HTTP_PROXY open4 -v 1.3
gem install --http-proxy $HTTP_PROXY rack -v 1.2.2
gem install --http-proxy $HTTP_PROXY redis -v 2.1.1
gem install --http-proxy $HTTP_PROXY redis-namespace -v 0.10.0
gem install --http-proxy $HTTP_PROXY tilt -v 1.2.2
gem install --http-proxy $HTTP_PROXY sinatra -v 1.2.1
gem install --http-proxy $HTTP_PROXY vegas -v 0.1.8
gem install --http-proxy $HTTP_PROXY resque -v 1.15.0
gem install --http-proxy $HTTP_PROXY rspec-core -v 2.0.0
gem install --http-proxy $HTTP_PROXY rspec-expectations -v 2.0.0
gem install --http-proxy $HTTP_PROXY rspec-mocks -v 2.0.0
gem install --http-proxy $HTTP_PROXY rspec -v 2.0.0
gem install --http-proxy $HTTP_PROXY rubyzip -v 0.9.4
gem install --http-proxy $HTTP_PROXY streamio-ffmpeg -v 0.7.8
gem install --http-proxy $HTTP_PROXY trollop -v 1.16.2
gem install --http-proxy $HTTP_PROXY gherkin
gem install --http-proxy $HTTP_PROXY cucumber

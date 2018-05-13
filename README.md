# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
require 'net/http/persistent'

uri = URI 'http://example.com/awesome/web/service'

http = Net::HTTP::Persistent.new 'my_app_name'

# perform a GET
response = http.request uri

# create a POST
post_uri = uri + 'create'
post = Net::HTTP::Post.new post_uri.path
post.set_form_data 'some' => 'cool data'

# perform the POST, the URI is always required
response = http.request post_uri, post

# if you are done making http requests, or won't make requests for several
# minutes
http.shutdown

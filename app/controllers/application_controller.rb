class ApplicationController < ActionController::Base
  protect_from_forgery
  # the rails application does not accept big json request ,so to allow the user to submit a huge request to the server, we should configure rails to accept that, by setting the limit of the request to a huge number
  Rack::Utils.key_space_limit = 1000000000
end

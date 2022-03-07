require 'sinatra'
require_relative 'record/users'

get '/' do
  #headers 'Link' => '<https://indieauth.com/auth>; rel="authorization_endpoint"'
  #headers 'Link' => '<localhost:5000/api/micropub/auth>; rel="authorization_endpoint"'
  'HELLO'
end

get '/dogs/:id' do
  "Dog #{id}"
end

get '/users' do
  puts User.all
end

post '/api/micropub' do
  token = nil
  puts request.params

  #token ||= request.headers[:authorization].gsub( 'Bearer', '' ).strip if request.headers[:authorization].present?
  #token ||= params[:access_token] if params[:access_token].present?

  puts token

  "hello there pardner"
end

helpers do
  def auth!
    return true
  end
end
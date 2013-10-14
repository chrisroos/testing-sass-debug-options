require 'bundler/setup'
require 'sinatra'

get '/' do
  redirect to('/index.html')
end

get '/assets/stylesheets/:filename' do
  # This allows Chrome to use a relative path to get to the original SCSS files
  send_file File.expand_path("../assets/stylesheets/#{params[:filename]}", __FILE__)
end

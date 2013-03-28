require 'sinatra'
require 'twitter'

Twitter.configure do |config|
  config.consumer_key = YOUR_CONSUMER_KEY
  config.consumer_secret = YOUR_CONSUMER_SECRET
  config.oauth_token = YOUR_OAUTH_TOKEN
  config.oauth_token_secret = YOUR_OAUTH_TOKEN_SECRET
end

get'/' do

  erb(:home)
end

get '/twitter' do
  if params[:user_name]
    @user =  Twitter.user(params[:user_name])
    #@followers = Twitter.followers('pzaich')
    erb(:twitter)
  end
end

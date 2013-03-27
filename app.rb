require 'sinatra'
require 'twitter'

Twitter.configure do |config|
  config.consumer_key = "ZqL7ikfO1G3DVrYL6nGw"
  config.consumer_secret = "fgXo98Gx8GMzEvxGMgGQYfAC6XlTzrYoMDPjUUUvrW8"
  config.oauth_token = "33988646-htXX95J5dyiaPplt8R7BXjBgYjkRRESMMEDBQaQkR"
  config.oauth_token_secret = "sigeH1t2TQ9iBTzxWEI5kdu3abaLvE4BuXSgIeeqxE"
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

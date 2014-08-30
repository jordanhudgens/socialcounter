class FeedsController < ApplicationController
  def index
  end

  def twitter_news
    account = Settings['twitter']

    Twitter.configure do |config|
      config.consumer_key = account['consumer_key']
      config.consumer_secret = account['consumer_secret']
      config.oauth_token = account['oauth_token']
      config.oauth_token_secret = account['oauth_token_secret']
    end

    @twitter_user = account['name']

    @tweet_news = Twitter.user_timeline(@twitter_user, {count: 3})
  end

end

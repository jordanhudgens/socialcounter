Socialcounter::Application.routes.draw do
  get "feeds/index"
  get "feeds/twitter_news"
  root :to => "feeds#twitter_news"
end

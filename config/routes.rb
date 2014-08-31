Socialcounter::Application.routes.draw do
  get "home/index"
  get "feeds/index"
  get "feeds/twitter_news"
  root :to => "home#index"
end

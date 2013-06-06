GithubScore::Application.routes.draw do
  root :to => "home#index"
  resources :users, :only => [ :create ] 
end
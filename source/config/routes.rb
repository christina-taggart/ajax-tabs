TabsChallenge::Application.routes.draw do
  root :to => 'challenges#index'
  resources :challenges, :only => [:index]
end

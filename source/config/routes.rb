TabsChallenge::Application.routes.draw do
  root :to => 'challenges#index'
  resources :challenges
  resources :units
end

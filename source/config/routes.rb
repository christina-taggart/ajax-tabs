TabsChallenge::Application.routes.draw do
  root :to => 'challenges#index'
  resources :challenges, :only => [:index]

  get "/unit/:id/challenges", to: "challenges#show"
end

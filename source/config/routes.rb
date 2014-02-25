TabsChallenge::Application.routes.draw do
  root :to => 'challenges#index'
  resources :challenges, :only => [:index]

  get "/unit/:id/challenges", to: "challenges#show"
  get "/challenge/:id/content", to: "challenges#content"
end

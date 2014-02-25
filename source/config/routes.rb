TabsChallenge::Application.routes.draw do
  root :to => 'challenges#index'

  resources :units do
    resources :challenges
  end
end

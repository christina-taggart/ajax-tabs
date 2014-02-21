TabsChallenge::Application.routes.draw do
  resources :challenges, :only => [:index]
end

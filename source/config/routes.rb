TabsChallenge::Application.routes.draw do
  root :to => 'challenges#index'
  resources :challenges, :only => [:index]
  get '/challenges/:key' => 'challenges#get_challenges_by_phase'
end

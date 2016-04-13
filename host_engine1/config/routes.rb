HostEngine1::Engine.routes.draw do
  resources :engine1s 
  root "engine1s#index"
end

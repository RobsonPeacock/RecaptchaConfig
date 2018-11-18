Rails.application.routes.draw do
  resources :signups
  root 'signups#new'
end

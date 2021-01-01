Rails.application.routes.draw do
  resources :snapshots

  root 'snapshots#index'
end

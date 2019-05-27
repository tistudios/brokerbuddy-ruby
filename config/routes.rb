Rails.application.routes.draw do
  resources :abyences
  resources :policy_renewals
  resources :loss_runs_requireds
  resources :underwriters
  resources :insurers
  resources :coverages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  root "top#index"

  get "sign_up" => "sign_up#new"
  post "sign_up" => "sign_up#create"

  get "sign_in" => "sessions#new"
  post "sign_in" => "sessions#create"
  get "sign_out" => "sessions#destroy"

  resource :note
end

Rails.application.routes.draw do
  # get "/exercises" => "exercises#index"
  # post "/exercises" => "exercises#create"
  # get "/exercises/:id" => "exercises#show"
  # patch "/exercises/:id" => "exercises#update"
  # get "/upper1" => "upper1#index"
  # get "/upper2" => "upper2#index"
  # get "/shoulder" => "shoulder#index"
  # get "/leg" => "leg#index"

  root to: 'exercises#index'
  resources :upper1, :upper2, :shoulder, :leg
  resources :exercises do
    member do
      get :copy
    end
  end
  mount ActionCable.server => '/cable'
end

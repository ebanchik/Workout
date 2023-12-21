Rails.application.routes.draw do
  # get "/exercises" => "exercises#index"
  # post "/exercises" => "exercises#create"
  # get "/exercises/:id" => "exercises#show"
  # patch "/exercises/:id" => "exercises#update"
  root to: 'exercises#index'
  resources :upper1, :upper2, :shoulder, :leg
  resources :exercises do
    member do
      get :copy
    end
  end
end

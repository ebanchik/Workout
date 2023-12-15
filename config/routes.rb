Rails.application.routes.draw do
  get "/exercises" => "exercises#index"
  post "/exercises" => "exercises#create"
  get "/exercises/:id" => "exercises#show"
  patch "/exercises/:id" => "exercises#update"
end

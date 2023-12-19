Rails.application.routes.draw do
  get "/exercises" => "exercises#index"
  post "/exercises" => "exercises#create"
  get "/exercises/:id" => "exercises#show"
  patch "/exercises/:id" => "exercises#update"
  get "/specific_exercises" => "upper1#copy_specific_exercises"
end

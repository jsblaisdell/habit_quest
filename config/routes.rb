HabitQuest::Application.routes.draw do
  root "tasks#index"
  post "/tasks" => "tasks#create"

  devise_for :users
end

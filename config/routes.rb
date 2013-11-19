HabitQuest::Application.routes.draw do
  root "tasks#index"

  devise_for :users
end

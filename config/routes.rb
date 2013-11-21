HabitQuest::Application.routes.draw do
  root "tasks#index"
  resources :tasks
  resources :rewards

  devise_for :users
end

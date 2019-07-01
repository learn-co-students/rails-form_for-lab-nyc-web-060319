Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get "/students", to: "students#index"
  # get "/students/new", to: "students#new"
  # post "/students", to: "students#create", as: "student"
  resources :students
  resources :school_classes
end

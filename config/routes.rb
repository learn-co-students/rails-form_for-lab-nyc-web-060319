Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #student routes
  # get "/students", to: "students#index"
  # get "/students/:id", to: "students#show"
  # get "/students/new", to: "students#new"

  # #school_classes routes
  # get "/school_classes", to: "school_classes#index"

  resources :students, except: [:destroy, :index]
  resources :school_classes, except: [:destroy, :index]
end

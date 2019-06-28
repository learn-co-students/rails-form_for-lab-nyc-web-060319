Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :school_classes, only: [:index, :show, :create, :edit, :new, :update]
  post '/create', to: 'school_class#create'

  resources :students, only: [:index, :show, :create, :new, :edit]
  patch '/students', to: 'student#update'
end

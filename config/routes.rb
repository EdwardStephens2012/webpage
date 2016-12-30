Rails.application.routes.draw do
  root "pages#home"
  get "about" => "pages#about"
  get "contacts" => "pages#contacts"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
match '/contacts', to: 'contacts#new', via: 'get'
resources "contacts", only: [:new, :create]

end

Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }





devise_scope :user do
   get '/registrations/ok' => 'registrations#ok'
   get "login", to: "devise/sessions#new"
   get "logout", to: "devise/sessions#destroy"
end



  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 root 'home#index' 

#@request.env["devise.mapping"] = Devise.mappings[:user]

end

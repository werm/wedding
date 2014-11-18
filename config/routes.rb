Rails.application.routes.draw do

  namespace :api do
    resources :stories
    resources :people
    post 'contact' => 'people#send_mail'
  end

  root 'application#index'
  get "*path" => "application#index"

end

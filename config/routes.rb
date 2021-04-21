Rails.application.routes.draw do

  devise_for :users 

  root to: "albums#index"
  resources :albums do 
    member do
      delete :delete_image_attachment
    end
    resources :comments
    resources :tags
  end
    
end
  
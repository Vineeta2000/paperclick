Rails.application.routes.draw do
  root 'welcome#index'
  
  get 'welcome/index'

  devise_for :users, controllers: {sessions: "sessions"}
  # get 'welcome/index'

  # root 'welcome#index'

  resources :posts do 
    collection do
        post :create_comment
        delete :destroy_comment
        post :like_comment
        delete :dislike_comment       
      end
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  root "pages#home"

  resources :people do 
    collection do 
      post :import #post is the POST http method
    end 
  end 

  #OR

  # resources :people do 
  #   post :import, on: :collection
  # end 

  #OR
  # post 'people/import', to: 'people#import', as: 'import_people'

  get 'pages/home'

  delete :clear_people, to: "people#clear"

end

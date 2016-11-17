Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'articles#index'
  resources :categories, only: [:index, :show]

  resources :articles do
    resources :bibliographies, except: [:show]
    resources :footnotes, except: [:show]
  end

end

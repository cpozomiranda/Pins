Rails.application.routes.draw do
  resources :categories
  devise_for :users
    resources :pins do 
  member do
    put "like", to: "pins#upvote"
    put "dislike", to: "pins#downvote"
  end
  end

  get 'welcome/index'
  root 'welcome#index'
  get 'mypins' => 'pins#mypins'
  get 'pinsof/:user_id' => 'pins#pinsof', :as => "pinsof"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

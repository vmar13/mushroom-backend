Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
    resources :users
    resources :mushrooms
    resources :comments
    resources :health_benefits
    resources :mush_health_benefits
    resources :sources
    resources :fav_videos
    end 
  end 

end

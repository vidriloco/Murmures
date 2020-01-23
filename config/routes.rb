Rails.application.routes.draw do
  get "/sitemap.xml" => "sitemap#index", :format => "xml", :as => :sitemap
  
  devise_for :users
  namespace :admin do
    resources :categories
    resources :testimonials
    resources :users
    root to: "testimonials#index"
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'testimonials#index' 
end

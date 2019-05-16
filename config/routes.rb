Rails.application.routes.draw do
  scope "/:locale" do
    resources :users
    resources :welcome, only: [:index]
  end
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

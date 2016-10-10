Rails.application.routes.draw do
  devise_for :users
  
  get '/pages/cookies_policy' => 'pages#cookies_policy', :as => :cookies_policy_page

  root "pages#show", page: "home"
end

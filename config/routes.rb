Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => "/admin", as: "rails_admin"

  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    get "/pages/cookies_policy" => "pages#cookies_policy", as: :cookies_policy
    unless Rails.env.production?
      get "/components", to: "pages#show", page: "components", as: :components
    end
    root "pages#show", page: "home"
  end
end

Rails.application.routes.draw do
  get "ping", to: "ping#index"
  get "/healthcheck/live", to: proc { [200, {}, %w[OK]] }
  get "/healthcheck/ready", to: GovukHealthcheck.rack_response

  get "/accessibility", to: "pages#accessibility"
  get "/involving-children", to: "pages#involving-children"
  get "/parental-responsibility", to: "pages#parental-responsibility"
  get "/emotional-support", to: "pages#emotional-support"
  get "/negotiating-between-parents", to: "pages#negotiating-between-parents"
  get "/professional-mediation", to: "pages#professional-mediation"
  get "/lawyer-negotiation", to: "pages#lawyer-negotiation"
  get "/collaborative-law", to: "pages#collaborative-law"
  get "/going-to-court", to: "pages#going-to-court"

  resources :cases, param: :account_number, only: [:show]

  namespace :admin do
    get "/", to: "sessions#new"
    post "/", to: "sessions#create", as: :login
    delete "/logout", to: "sessions#destroy"

    get "/upload", to: "uploads#new"
    post "/upload", to: "uploads#create"
  end

  get "/404", to: "errors#not_found"
  get "/500", to: "errors#internal_error"

  root to: "pages#homepage"
end

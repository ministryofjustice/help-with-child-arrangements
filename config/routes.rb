Rails.application.routes.draw do
  get "ping", to: "ping#index"
  get "/healthcheck/live", to: proc { [200, {}, %w[OK]] }
  get "/healthcheck/ready", to: GovukHealthcheck.rack_response

  get "/about/accessibility", to: "about#accessibility"
  get "/about/cookies", to: "about#cookies"
  get "/about/privacy", to: "about#privacy"
  get "/about/terms-conditions", to: "about#terms-conditions"

  get "/collaborative-law", to: "pages#collaborative-law"
  get "/emotional-support", to: "pages#emotional-support"
  get "/going-to-court", to: "pages#going-to-court"
  get "/going-to-court-other-parent", to: "pages#going-to-court-other-parent"
  get "/involving-children", to: "pages#involving-children"
  get "/lawyer-negotiation", to: "pages#lawyer-negotiation"
  get "/negotiating-between-parents", to: "pages#negotiating-between-parents"
  get "/parental-responsibility", to: "pages#parental-responsibility"
  get "/professional-mediation", to: "pages#professional-mediation"
  get "/professional-mediation-other-parent", to: "pages#professional-mediation-other-parent"

  get "/404", to: "errors#not_found"
  get "/500", to: "errors#internal_error"

  root to: "pages#homepage"
end

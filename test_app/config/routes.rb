Rails.application.routes.draw do
  get "/auth/bancsabadell/callback" => "omniauth#bancsabadell"

  root to: 'home#landing'
end

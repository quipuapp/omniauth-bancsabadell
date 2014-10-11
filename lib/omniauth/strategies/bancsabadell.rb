require 'omniauth/strategies/oauth2'

module OmniAuth
  module Strategies
    class Bancsabadell < OmniAuth::Strategies::OAuth2
      API_BS_HOST = 'https://developers.bancsabadell.com'
    end
  end
end

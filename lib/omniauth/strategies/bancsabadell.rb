require 'omniauth/strategies/oauth2'

module OmniAuth
  module Strategies
    class Bancsabadell < OmniAuth::Strategies::OAuth2
      API_BS_HOST = 'https://developers.bancsabadell.com'

      option :client_options, {
        site: 'https://developers.bancsabadell.com',
        authorize_url: 'https://developers.bancsabadell.com/AuthServerBS/oauth/authorize',
        token_url: 'https://developers.bancsabadell.com/AuthServerBS/oauth/token'
      }

      def callback_url
        full_host + script_name + callback_path # + query_string
      end

      def request_phase
        super
      end

      def authorize_params
        super.merge({
          response_type: :code,
          client_id: options.client_id,
          scope: "read write"
        })
      end
    end
  end
end

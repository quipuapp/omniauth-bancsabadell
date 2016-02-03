require 'omniauth/strategies/oauth2'

module OmniAuth
  module Strategies
    class Bancsabadell < OmniAuth::Strategies::OAuth2
      API_BS_HOST = 'https://oauth.bancsabadell.com'

     option :client_options, {
        site: API_BS_HOST,
        authorize_url: "#{API_BS_HOST}/AuthServerBS/oauth/authorize",
        token_url: "#{API_BS_HOST}/AuthServerBS/oauth/token",
        setup: true
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
          scope: "read"
        })
      end
    end
  end
end

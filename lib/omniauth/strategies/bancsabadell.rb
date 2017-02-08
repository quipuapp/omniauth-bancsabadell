require 'omniauth/strategies/oauth2'

module OmniAuth
  module Strategies
    class Bancsabadell < OmniAuth::Strategies::OAuth2
      def self.api_host
        @api_host ||= if %w(development staging).include?(ENV['RAILS_ENV'])
                        'https://developers.bancsabadell.com'
                      else
                        'https://oauth.bancsabadell.com'
                      end
      end

      option :client_options, {
        site: api_host,
        authorize_url: "#{api_host}/AuthServerBS/oauth/authorize",
        token_url: "#{api_host}/AuthServerBS/oauth/token",
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

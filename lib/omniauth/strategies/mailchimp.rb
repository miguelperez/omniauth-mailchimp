require 'omniauth/strategies/oauth2'
require 'multi_json'

module OmniAuth
  module Strategies
    class Mailchimp < OmniAuth::Strategies::OAuth2

      option :name, "mailchimp"

      option :client_options, {
        :site => "https://login.mailchimp.com",
        :authorize_url => '/oauth2/authorize',
        :token_url => '/oauth2/token'
      }

      def request_phase
        req = Rack::Request.new(@env)
        options.update(req.params)
        super
      end

      uid {
        raw_info["account_id"]
      }

      info do
        {
          :first_name => raw_info["first_name"],
          :last_name => raw_info["last_name"],
          :email => raw_info["email"],
        }
      end

      extra do
        {
          :metadata => user_data,
          :raw_info => raw_info,
          :api_token_with_dc => "#{@access_token.token}-#{user_data['dc']}",
        }
      end

      def raw_info
        @raw_info ||= begin
          data = user_data
          endpoint = data["api_endpoint"]
          response = @access_token.get("#{endpoint}/3.0/").parsed
          if response["error"]
            case response["code"]
            when 109
              fail!(:invalid_credentials, response["error"])
            end
          else
            response
          end
        end
      end

      def user_data
        @data ||= MultiJson.decode(@access_token.get("https://login.mailchimp.com/oauth2/metadata").body)
      rescue ::OAuth2::Error => e
        if e.response.status == 302
          @data ||= MultiJson.decode(@access_token.get(e.response.headers['location']))
        else
          raise e
        end
      end
    end
  end
end

require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class PrestoDoctor < OmniAuth::Strategies::OAuth2
      BASE_USER_API = '/api/v1/user'

      option :name, :prestodoctor

      option :client_options, {
        site: 'https://prestodoctor.com',
        authorize_url: '/oauth/authorize'
      }

      uid { raw_info['id'] }

      info do
        {
            user_info: raw_info,
            recommendation: recommendation,
            photo_id: photo_id
        }
      end

      def raw_info
        @raw_info ||= access_token.get(BASE_USER_API).parsed
      end

      def recommendation
        @raw_rec ||= access_token.get(BASE_USER_API + '/recommendation').parsed
      end

      def photo_id
        @raw_photo_id ||= access_token.get(BASE_USER_API + '/photo_id').parsed
      end
    end
  end
end

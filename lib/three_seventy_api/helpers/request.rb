module ThreeSeventyApi
  module Helpers
    module Request
      def client
        @client ||= RestClient::Resource::new(@url, :user => @username, :password => @password)
      end
      def get(path)
       response =  client[path].get :accept => :json, :content_type => :json
       raise_errors(response)
       response
      end
      def post(path, payload)
        response = client[path].post payload
        raise_errors(response)
        response
      end
      def delete(path)
        response = client[path].delete
        raise_errors(response)
        response
      end
      def raise_errors(response)
      end
      def raise_errors_(response)
          binding.pry
          response_code = response.code
          response_data = response_data
          case code.to_i
          when 401
            response_data = response.body
            raise ThreeSeventyApi::Errors::UnauthorizedError.new(data), "(#{response_code}): #{response_data}"
          when 400
            response_data = response.body
            raise ThreeSeventyApi::Errors::GeneralError.new(data), "(#{response_code}): #{response_data}"
          when 403
            response_data = response.body
            raise ThreeSeventyApi::Errors::AccessDeniedError.new(data), "(#{response_code}): #{response_data}"
          when 404
            raise ThreeSeventyApi::Errors::NotFoundError,"(#{response_code}): #{response_data}"
          when 500
            raise ThreeSeventyApi::Errors::InformLinkedInError, "Internal Server error. (#{response_code}): #{response_data}"
          when 502..503
            raise ThreeSeventyApi::Errors::UnavailableError, "(#{response_code}): #{response_data}"
          end
        end
    end
  end
end
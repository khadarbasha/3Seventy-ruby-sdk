module ThreeSeventyApi
  module Helpers
    module Request
      def client
        @client ||= RestClient::Resource::new("https://api.3seventy.com/api/v2.0", :user => @username, :password => @password)
      end
      def get(path)
        client[path].get :accept => :json, :content_type => :json
      end
    end
  end
end
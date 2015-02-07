module ThreeSeventyApi
  module Helpers
    module Request
      def client
        @client ||= RestClient::Resource::new(@url, :user => @username, :password => @password)
      end
      def get(path)
        begin 
          response =  client[path].get :accept => 'application/json', :content_type => 'application/json'
        rescue Exception => e
          puts e.inspect
        end
        response
      end
      def put(path, payload)
        begin
          response = client[path].put payload.to_json, :accept => 'application/json', :content_type => 'application/json'
        rescue Exception => e
          puts e.inspect
        end
        response
      end
      
      def post(path, payload)
        begin
          response = client[path].post payload.to_json, :accept => 'application/json', :content_type => 'application/json'
        rescue Exception => e
          puts e.inspect
        end
        response
      end
      def delete(path)
        begin
          response = client[path].delete
        rescue Exception => e
          puts e.inspect
        end
        response
      end
    end
  end
end
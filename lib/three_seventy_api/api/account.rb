module ThreeSeventyApi
  module Api
    module Account
      def all_accounts(options={})
        options.merge!({:inactive=>false}) if options[:inactive].nil?
        end_point = "/account?inactive=#{options[:inactive]}"
        get(end_point)
      end
      def add_account(id, payload)
        end_point = "/account/#{id}"
        post(end_point, payload)
      end
      def delete_account(id)
        end_point = "/account/#{id}"
        delete(end_point)
      end
      def edit_account(id, payload)
        end_point = "/account/#{id}"
        put(end_point, payload)
      end
      # Get a specified account
      def get_account(id)
        end_point = "/account/#{id}"
        get(end_point)
      end
    end
  end
end
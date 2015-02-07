module ThreeSeventyApi
  module Api
    module AccountAttribute

      # Public: Gets all values set on an account. Note that inherited values are also returned. The ID of the account which the value is directly set is returned for reference.
      # 
      # account_id - Integer, Id of the account.
      #       
      # Returns the list of attributes and their values those are set on account.
      def all_attributes(account_id)
        end_point = "/account/#{account_id}/attribute"
        get(end_point)
      end

      # Public: Gets an attributes value that is set on an account.
      # 
      # account_id - Integer, Id of the account.
      # name - String, Name of the attribute.
      #       
      # Returns the attributes value.
      def get_attribute(account_id, name)
        end_point = "/account/#{account_id}/attribute/#{name}"
        get(end_point)
      end
      def add_attribute(account_id, name)
        payload = {
          "name" => name
        }
        end_point = "/account/#{account_id}/attribute"
        post(end_point, payload)
      end

      # Public: Edit an attributes value that is set on an account.
      # 
      # account_id - Integer, Id of the account.
      # payload - Hash, body of the attribute, with key as attribute name and value as attributes new value.
      #       
      # Returns the modified attribute.
      def edit_attribute(account_id, payload)
        key_name = payload.keys.first
        key_value = payload.values.first
        end_point = "/account/#{account_id}/attribute/#{key_name}"
        put(end_point, key_value)
      end

      # Public: Delete and attributes value that is set on an account.
      # 
      # account_id - Integer, Id of the account.
      # name - String, Name of the attribute to be deleted
      # 
      # Returns none.
      def delete_attribute(account_id, name)
        end_point = "/account/#{account_id}/attribute/#{name}"
        delete(end_point)
      end
    end
  end
end
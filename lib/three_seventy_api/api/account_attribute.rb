module ThreeSeventyApi
  module Api
    # AccountAttribute api endpoint implementation.
    # @see https://api.3seventy.com/docs/v2.0/Default/endpoints#!/accountattribute
    module AccountAttribute

      # Gets all values set on an account. Note that inherited values are also returned. The ID of the account which the value is directly set is returned for reference.
      # 
      # @param account_id [Integer] Account Id of the user.
      #
      # @return [Array<Object>] The list of attributes and their values those are set on account.
      def all_attributes(account_id)
        end_point = "/account/#{account_id}/attribute"
        get(end_point)
      end

      # Gets an attributes value that is set on an account.
      # 
      # @param account_id [Integer] Account Id of the user.
      # @param name [String] Name of the attribute to be deleted.
      # 
      # @return [String] Attribute's value.
      def get_attribute(account_id, name)
        end_point = "/account/#{account_id}/attribute/#{name}"
        get(end_point)
      end
      # To be modified.
      def add_attribute(account_id, name)
        payload = {
          "name" => name
        }
        end_point = "/account/#{account_id}/attribute"
        #post(end_point, payload)
      end

      # Edit an attributes value that is set on an account.
      # 
      # @param account_id [Integer] Id of the account.
      # @param payload [Hash] Body of the attribute with key as attribute name and value as attribute's new value.
      # 
      # @return [Object] The modified attribute.
      def edit_attribute(account_id, payload)
        key_name = payload.keys.first.to_s
        key_value = payload.values.first
        end_point = "/account/#{account_id}/attribute/#{key_name}"
        put(end_point, key_value)
      end

      # Delete the attribute value that is set on an account.
      # 
      # @param account_id [Integer] Account Id of the user.
      # @param name [String] Name of the attribute to be deleted.
      # 
      # @return none.
      def delete_attribute(account_id, name)
        end_point = "/account/#{account_id}/attribute/#{name}"
        delete(end_point)
      end
    end
  end
end
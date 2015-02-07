module ThreeSeventyApi
  module Api
    module AccountAttributeDefinition
      # Public: Gets a list of all attribute defintions this account has access to.
      # 
      # id - Integer, Id of the account.
      #       
      # Returns the attribute definitions list.
      def all_attribute_definitions(id)
        end_point = "/account/#{id}/attributeDef"
        get(end_point)
      end

      # Public: Gets the details of a specific attribute definition.
      # 
      # account_id - Integer, Id of the account.
      # attribute_id - Integer, Id of the attribute.
      #       
      # Returns the attribute definition.
      def get_attribute_definition(account_id, attribute_id)
        end_point = "/account/#{account_id}/attributeDef/#{attribute_id}"
        get(end_point)
      end

      # Public: Removes an attribute defintion. Note that when a definition is removed all attributes that are tied to that definition are also removed.
      # 
      # account_id - Integer, Id of the account.
      # attribute_id - Integer, Id of the attribute.
      #       
      # Returns none.
      def delete_attribute_definition(account_id, attribute_id)
        end_point = "/account/#{account_id}/attributeDef/#{attribute_id}"
        delete(end_point)
      end
    end
  end
end
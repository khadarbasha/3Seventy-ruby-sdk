module ThreeSeventyApi
  module Api
    # AccountAttributeDefinition api end points implementation.
    # @see  https://api.3seventy.com/docs/v2.0/Default/endpoints#!/accountattributedefinition
    module AccountAttributeDefinition


      # Gets a list of all attribute defintions this account has access to.
      # 
      # @param id [Integer] Id of the account.
      #       
      # @return [Array<Object>] The attribute definitions list.
      def all_attribute_definitions(id)
        end_point = "/account/#{id}/attributeDef"
        get(end_point)
      end

      # Gets the details of a specific attribute definition.
      # 
      # @param account_id [Integer] Id of the account.
      # @param attribute_id [Integer] Id of the attribute.
      # 
      # @return [Object] The attribute definition.
      def get_attribute_definition(account_id, attribute_id)
        end_point = "/account/#{account_id}/attributeDef/#{attribute_id}"
        get(end_point)
      end

      # Removes an attribute defintion. Note that when a definition is removed all attributes that are tied to that definition are also removed.
      # 
      # @param account_id [Integer] Id of the account.
      # @param attribute_id [Integer] Id of the attribute.
      #       
      # @return none.
      def delete_attribute_definition(account_id, attribute_id)
        end_point = "/account/#{account_id}/attributeDef/#{attribute_id}"
        delete(end_point)
      end

      # Add a new attribute definition.
      # 
      # @param account_id [Integer] Account id of the user.
      # @param payload [Hash] body of the attribute.
      # @option payload [Integer] CategoryId (default_value) Category id of the attribute.
      # @option payload [Integer] DataType (default_value) Data Type of the attribute.
      # @option payload [String] Name Name of the attribute.
      # @option payload [Boolean] Inheritable Set if child accounts will get this value from their parents if not directly set.
      # @option payload [String] Description Description of the attribute.
      #
      # Returns the newly created attribute.
      def add_attribute_definition(account_id, payload)
        end_point = "/account/#{account_id}/attributeDef"
        post(end_point, payload)
      end
    end
  end
end
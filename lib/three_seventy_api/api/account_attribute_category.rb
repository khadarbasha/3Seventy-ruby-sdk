module ThreeSeventyApi
  module Api
    # AccountAttributeCategory api end points implementation.
    # @see  https://api.3seventy.com/docs/v2.0/Default/endpoints#!/accountattributecategory
    module AccountAttributeCategory

      # Lists all the categories of account attributes.
      # 
      # @return [Array<Object>] The list of all categories of account attributes.
      def all_account_attribute_categories
        end_point = "/reference/account-attribute-category"
        get(end_point)
      end

      # Gets the details for a specific account attribute category.
      # 
      # @param id [Integer] Id of the category.
      # @return [Object] the details for a specific account attribute category.
      #
      # Returns the details for a specific account attribute category.
      def get_account_attribute_category(id)
        end_point = "/reference/account-attribute-category/#{id}"
        get(end_point)
      end
    end
  end
end
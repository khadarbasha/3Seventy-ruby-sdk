module ThreeSeventyApi
  module Api
    module AccountAttributeCategory
      # Public: Lists all categories for account attributes.
      # 
      # Returns the list of all categories of account attributes.
      def all_account_attribute_categories
        end_point = "/reference/account-attribute-category"
        get(end_point)
      end

      # Public: Gets the details for a specific account attribute category.
      # 
      # id - Integer, Id of the category.
      #       
      # Returns the details for a specific account attribute category.
      def get_account_attribute_category(id)
        end_point = "/reference/account-attribute-category/#{id}"
        get(end_point)
      end
    end
  end
end
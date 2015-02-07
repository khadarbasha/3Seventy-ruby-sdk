module ThreeSeventyApi
  module Api
    module Account

      # Public: Returns a list of accounts that exist for the user currently logged in.
      # 
      # options - The Hash options used to get the account based on acitivity. (default: {:inactive=>false}):
      #           :inactive - The boolean, represent the inactivity of the accounts (optional).
      #       
      # Returns the list of accounts.
      def all_accounts(options={})
        options.merge!({:inactive=>false}) if options[:inactive].nil?
        end_point = "/account?inactive=#{options[:inactive]}"
        get(end_point)
      end
      
      # Public: Add a new account.
      # 
      # id - Integer, account id of the user.
      # payload - Hash, represents the body of the account.
      #           "ParentId" - Integer, ParentId of the account.
      #           "Name" - String, Name of the account.
      #           "Channels" - Array[Integer], list of channels to allow the contact to use (optional).
      #           "Attributes" - Array[InnerCreateUpdateAccountAttribute],list of account attributes to set (optional).
      #
      # Returns the newly created account.
      def add_account(id, payload)
        end_point = "/account/#{id}"
        post(end_point, payload)
      end

      # Public: Delete an account.
      # 
      # id - Integer, account id of the user.
      #
      # Returns none.
      def delete_account(id)
        end_point = "/account/#{id}"
        delete(end_point)
      end

      # Public: Edit the account.
      # 
      # id - Integer, account id of the user.
      # payload - Hash, represents the body of the account.
      #           "ParentId" - Integer, ParentId of the account.
      #           "Name" - String, Name of the account.
      #           "Channels" - Array[Integer], list of channels to allow the contact to use (optional).
      #           "Attributes" - Array[InnerCreateUpdateAccountAttribute],list of account attributes to set (optional).
      #
      # Returns the modified account.
      def edit_account(id, payload)
        end_point = "/account/#{id}"
        put(end_point, payload)
      end

      # Public: Retrives the account.
      # 
      # id - Integer, account id of the user.
      #
      # Returns the user account.
      def get_account(id)
        end_point = "/account/#{id}"
        get(end_point)
      end
    end
  end
end
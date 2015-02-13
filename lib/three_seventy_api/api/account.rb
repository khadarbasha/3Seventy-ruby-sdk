module ThreeSeventyApi
  module Api
    # Account api end point implementation.
    # @see https://api.3seventy.com/docs/v2.0/Default/endpoints#!/account
    module Account
      
      
      # List all the accounts that exist for the user currently logged in.
      # 
      # @param options [Hash] The Hash options used to get the account based on acitivity.
      #  
      # @option options [Boolean] :inactive (null) Represent the inactivity of the accounts.
      #       
      # @return [Array<Object>] The list of accounts.
      def all_accounts(options={})
        options.merge!({:inactive=>false}) if options[:inactive].nil?
        end_point = "/account?inactive=#{options[:inactive]}"
        get(end_point)
      end
      
      # Add a new account.
      # 
      # @param id [Integer] Acount id of the user.
      # @param payload [Hash] Account payload in Hash format.
      # @option payload [Integer] ParentId id of the parent account.
      # @option payload [String] Name Name of the account.
      # @option payload [Array<Integer>] Channels (null) List of channels to allow the contact to use.
      # @option payload [Array<InnerCreateUpdateAccountAttribute>] Attributes (null) List of account attributes to set. 
      #
      # @return [Object] The newly created account.
      def add_account(id, payload)
        end_point = "/account/#{id}"
        post(end_point, payload)
      end

      # Delete an account.
      # 
      # @param id [Integer] Account Id of the user.
      # 
      # @return none.
      def delete_account(id)
        end_point = "/account/#{id}"
        delete(end_point)
      end

      # Edit an account.
      # 
      # @param id [Integer] Acount id of the user.
      # @param payload [Hash] Account payload in the Hash format.
      # @option payload [Integer] ParentId id of the parent account.
      # @option payload [String] Name Name of the account.
      # @option payload [Array<Integer>] Channels (null) List of channels to allow the contact to use.
      # @option payload [Array<InnerCreateUpdateAccountAttribute>] Attributes (null) List of account attributes to set. 
      #
      # @return [Object] The modified account object.
      def edit_account(id, payload)
        end_point = "/account/#{id}"
        put(end_point, payload)
      end

      # Retrive an account.
      # 
      # @param id [Integer] Account Id of the user.
      # 
      # @return [Object] Account.
      def get_account(id)
        end_point = "/account/#{id}"
        get(end_point)
      end
    end
  end
end
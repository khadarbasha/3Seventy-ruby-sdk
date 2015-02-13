module ThreeSeventyApi
  module Api
    # Callback Api end points implementation goes here.
    # @see https://api.3seventy.com/docs/v2.0/Default/endpoints#!/callback
    module Callback


      # Get all the callbacks assosiated with an account.
      # 
      # @param account_id [Integer] Id of the account.
      # 
      # @return [Array<Object>] All account callbacks. 
      def all_callbacks(account_id)
        end_point = "/account/#{account_id}/callback"
        get(end_point)
      end

      # Add callback to an account.
      # 
      # @param account_id [Integer] Id of the account.
      # @param payload [Hash] CallbackType Type of the callback.
      # @option payload [String] Url Callback url.
      # @option payload [Boolean] Active Toggle to enable/disable the callback.
      #
      # @return [Object] Callback.
      def add_callback(account_id, payload)
        end_point = "/account/#{account_id}/callback"
        post(end_point, payload)
      end
      
      # Edit callback.
      # 
      # @param account_id [Integer] Id of the account.
      # @param payload [Hash] CallbackType Type of the callback.
      # @option payload [String] Url Callback url.
      # @option payload [Boolean] Active Toggle to enable/disable the callback.
      #
      # @return [Object] Modified Callback object.
      def edit_callback
        end_point = "/account/#{account_id}/callback"
        post(end_point, payload)
      end

      # Delete callback.
      # 
      # @param account_id [Integer] Id of the account.
      # @param callback_id [Integer] Id of the callback.
      #
      # @return none.
      def delete_callback(account_id, callback_id)
        end_point = "/account/#{account_id}/callback/#{callback_id}"
        delete(end_point)
      end

      # Retrives the callback.
      # 
      # @param account_id [Integer] Id of the account.
      # @param callback_id [Integer] Id of the callback.
      #
      # @return [Object] Callback object.
      def get_callback(account_id, callback_id)
        end_point = "/account/#{account_id}/callback/#{callback_id}"
        get(end_point)
      end
    end
  end
end
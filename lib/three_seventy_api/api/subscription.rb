module ThreeSeventyApi
  module Api
    # Subscription Api end point implementation goes here.
    # @see https://api.3seventy.com/docs/v2.0/Default/endpoints#!/subscription
    module Subscription

      # Add a new subscription.
      # 
      # @param account_id [Integer] Id of the account.
      # @param payload [Hash] Body of the subscription.
      # @option payload [String] Name Subscription name.
      # @option payload [String] Label Subscription label.
      # @option payload [Integer] SubscriptionTypeId (1) Id of the subscription type.
      # @option payload [Integer] Frequency (0) Frequency of the subscription.
      # 
      # @return [Object] Newly created subscription object.
      def add_subscription(account_id, payload)
        end_point = "/account/#{account_id}/subscription"
        post(end_point, payload)
      end

      # Retrieve a subscription.
      # 
      # @param account_id [Integer] Id of the account.
      # @param subscription_id [Integer] Id of the subscription.
      # 
      # @return [Object] Subscription object.
       def get_subscription(account_id, subscription_id)
        end_point = "/account/#{account_id}/subscription/#{subscription_id}"
        get(end_point)
      end

      # Edit a subscription.
      # 
      # @param account_id [Integer] Id of the account.
      # @param subscription_id [Integer] Id of the subscription.
      # @param payload [Hash] Body of the subscription.
      # @option payload [String] Name Subscription name.
      # @option payload [String] Label Subscription label.
      # @option payload [Integer] SubscriptionTypeId (1) Id of the subscription type. 
      # @option payload [Integer] Frequency (0) Frequency of the subscription.
      # 
      # @return [Object] Modified subscription object.
      def edit_subscription(account_id, subscription_id, payload)
        end_point = "/account/#{account_id}/subscription/#{subscription_id}"
        put(end_point, payload)
      end

      # Delete the subscription.
      # 
      # @param account_id [Integer] Id of the account.
      # @param subscription_id [Integer] Id of the subscription.
      # 
      # @return none.
      def delete_subscription(account_id, subscription_id)
        end_point = "/account/#{account_id}/subscription/#{subscription_id}"
        delete(end_point)
      end

      # Get all the subscriptions assosiated with an account.
      # 
      # @param account_id [Integer] Id of the account.
      # 
      # @return [Array<Object>] List of all the subscriptions. 
      def all_subscription(account_id)
        end_point = "/account/#{account_id}/subscription"
        get(end_point)
      end
    end
  end
end
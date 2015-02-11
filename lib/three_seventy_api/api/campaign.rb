module ThreeSeventyApi
  module Api
    # Content Api end point implementation goes here.
    # @see https://api.3seventy.com/docs/v2.0/Default/endpoints#!/campaign
    module Campaign

      # Get all the campaigns assosiated with an account.
      # 
      # @param account_id [Integer] Id of the account.
      # @param only_me [Boolean] Toggle to display all the items.
      # 
      # @return [Array<Object>] List all the campaigns.
      def all_campaigns(account_id, only_mine)
        end_point = "/account/#{account_id}/campaign?onlyMine=#{only_mine}"
        get(end_point)
      end

      # Retrieve the campaign.
      # 
      # @param account_id [Integer] Id of the account.
      # @param campaign_id [Integer] Id of the content.
      # 
      # @return [Object] Campaign object.
      def get_campaign(account_id, campaign_id)
        end_point = "/account/#{account_id}/campaign/#{campaign_id}"
        get(end_point)
      end

      # Add a new campaign.
      # 
      # @param account_id [Integer] Id of the account.
      # @param payload [Hash] Body of the campaign.
      # @option payload [String] SubscriptionId Id of the subscription.
      # @option payload [String] Name Campaign name.
      # @option payload [Integer] CampaignTypeId (0) Id of the campaign type.
      # @option payload [Array] Content Contents of the campaign.
      # 
      # @return [Object] Newly created campaign object.
      def add_campaign(account_id, payload)
        end_point = "/account/#{account_id}/campaign"
        post(end_point, payload)
      end
      
      # Delete the campaign.
      # 
      # @param account_id [Integer] Id of the account.
      # @param campaign_id [Integer] Id of the campaign.
      # 
      # @return none.
      def delete_campaign(account_id, campaign_id)
        end_point = "/account/#{account_id}/campaign/#{campaign_id}"
        delete(end_point)
      end

      # Edit a campaign.
      # 
      # @param account_id [Integer] Id of the account.
      # @param campaign_id [Integer] Id of the campaign.
      # @param payload [Hash] Body of the campaign.
      # @option payload [String] SubscriptionId Id of the subscription.
      # @option payload [String] Name Campaign name.
      # @option payload [Integer] CampaignTypeId (0) Id of the campaign type.
      # @option payload [Array] Content (should be null if CampaignTypeId is 0) Contents of the campaign.
      # 
      # @return [Object] Newly created campaign object.
      def edit_campaign(account_id, campaign_id, payload)
        end_point = "/account/#{account_id}/campaign"
        put(end_point, payload)
      end
    end
  end
end
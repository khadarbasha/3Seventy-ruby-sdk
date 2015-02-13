module ThreeSeventyApi
  module Api
    # Content Api end point implementation goes here.
    # @see https://api.3seventy.com/docs/v2.0/Default/endpoints#!/campaign
    module Campaign

      # Get all the campaigns assosiated with an account.
      # 
      # @param visibility [Boolean] Toggle to display all the items.
      # 
      # @return [Array<Object>] List all the campaigns.
      def all_campaigns(visibility)
        end_point = url_("campaign")+"?onlyMine=#{visibility}"
        get(end_point)
      end

      # Retrieve the campaign.
      # 
      # @param campaign_id [Integer] Id of the content.
      # 
      # @return [Object] Campaign object.
      def get_campaign(campaign_id)
        get(url_("campaign", campaign_id))
      end

      # Add a new campaign.
      # 
      # @param payload [Hash] Body of the campaign.
      # @option payload [String] SubscriptionId Id of the subscription.
      # @option payload [String] Name Campaign name.
      # @option payload [Integer] CampaignTypeId (0) Id of the campaign type.
      # @option payload [Integer] ContentId (null) Id of the content.
      # @option payload [Array] Content (should be null if CampaignTypeId is 0) Contents of the campaign.
      # @option Content [String] Name Name of the content.
      # @option Content [String] Description Description of the content.
      # @option Content [Array<Object>] Templates (null) Content templates.
      # @option payload [String] UserData (null) user's data.
      # @option payload [String] SingleUse (false) Toggle to represent single use of the campaign.
      # @option payload [Array] SingleUseContentId (null) Id of the single use content.
      # @option payload [Array] Links (null) Array of links.
      # 
      # @return [Object] Newly created campaign object.
      def add_campaign(payload)
        post(url_("campaign"), payload)
      end
      
      # Delete the campaign.
      # 
      # @param account_id [Integer] Id of the account.
      # @param campaign_id [Integer] Id of the campaign.
      # 
      # @return none.
      def delete_campaign(campaign_id)
        delete(url_("campaign", campaign_id))
      end

      # Edit a campaign.
      # 
      # @param campaign_id [Integer] Id of the campaign.
      # @param payload [Hash] Body of the campaign.
      # @option payload [String] SubscriptionId Id of the subscription.
      # @option payload [String] Name Campaign name.
      # @option payload [Integer] CampaignTypeId (0) Id of the campaign type.
      # @option payload [Integer] ContentId (null) Id of the content.
      # @option payload [Array] Content (should be null if CampaignTypeId is 0) Contents of the campaign.
      # @option Content [String] Name Name of the content.
      # @option Content [String] Description Description of the content.
      # @option Content [Array<Object>] Templates (null) Content templates.
      # @option payload [String] UserData (null) user's data.
      # @option payload [String] SingleUse (false) Toggle to represent single use of the campaign.
      # @option payload [Array] SingleUseContentId (null) Id of the single use content.
      # @option payload [Array] Links (null) Array of links.
      # 
      # @return [Object] Modified campaign object.
      def edit_campaign(campaign_id, payload)
        put(url_("campaign", campaign_id), payload)
      end
    end
  end
end
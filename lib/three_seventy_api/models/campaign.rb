class Campaign < SoftDeletable
  attr_accessor :account_id
  attr_accessor :subscription_id
  attr_accessor :name
  attr_accessor :campaign_type_id 
  attr_accessor :content_id
  attr_accessor :session
  attr_accessor :session_length
  attr_accessor :user_data
  attr_accessor :single_use
  attr_accessor :single_use_content_id
  def json_
    hash = {
      "Id" => id,
      "AccountId" => account_id,
      "SubscriptionId" => subscription_id,
      "Name" => name,
      "CampaignTypeId" => campaign_type_id,
      "ContentId" => content_id,
      "Session" => session,
      "SessionLength" => session_length,
      "UserData" => user_data,
      "SingleUse" => single_use,
      "SingleUseContentId" => single_use_content_id
    }
    hash.to_json
  end
end
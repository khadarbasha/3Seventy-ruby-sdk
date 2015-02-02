# Public: Details of a campaign that are sent to a contact.
# Extends the SoftDeletable class.
class Campaign < SoftDeletable
  # Public: 
  #       setter/getter for account_id.
  #       Represents the account ID to which the campaign belongs.
  attr_accessor :account_id
  # Public: 
  #       setter/getter for subscription_id.
  #       Represents the ID of the subscription that contacts will be opted into.
  attr_accessor :subscription_id
  # Public: 
  #       setter/getter for name.
  #       Represents the campaign's name.
  #       This is a free form name.
  attr_accessor :name
  # Public: 
  #       setter/getter for campaign_type_id.
  #       Represents the campaign's type.
  attr_accessor :campaign_type_id 
  # Public: 
  #       setter/getter for content_id.
  #       Represents the Id of the Content that this campaign sends.
  attr_accessor :content_id
  # Public: 
  #       setter/getter for session.
  #       Represents if this campaign will start a new session.
  #       If set then when the contact texts into an attached keyword or the campaign is pushed to a contact they are placed into a session. This is used by dialog campaigns to manage responses without colliding with reserved keywords.
  #       Currently this value cannot be customized.
  attr_accessor :session
  # Public: 
  #       setter/getter for session_length.
  #       Represents the duration of sessions in milliseconds from start.
  #       Currently this value cannot be customized.
  attr_accessor :session_length
  # Public: 
  #       setter/getter for user_data.
  #       Represents the arbitrary user data field.
  #       This an area to store free form data.
  #       The Vector Portal uses this field to store some UI hints.
  attr_accessor :user_data
  # Public: 
  #       setter/getter for single_use.
  #       Represents if the campaign is a one time use campagin.
  #       This an area to store free form data.
  #       Single use campaigns can only be sent to a contact once. If the campaign is pushed to a contact more than once then nothing is sent to that contact.
  #       If the contact texts into a keyword that is attached to a single use campaign then they are sent the contents of the single_use_content_id value.
  attr_accessor :single_use
  # Public: 
  #       setter/getter for single_use_content_id.
  #       Represents the ID of the Content to send if a contact texts into a single use campaign more than once..
  #       This field is only valid for campaigns marked as single_use.
  #       This content is only sent if a contact texts into a keyword attached to the single use campaign. If the campaign is pushed to the contact then nothing is sent to them.
  attr_accessor :single_use_content_id
  # Public: Creates the json structure for the campaign object.
  #
  # Examples
  #
  #   json_
  #
  # Returns the json structure for the campaign object.
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
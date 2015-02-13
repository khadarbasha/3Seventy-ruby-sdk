require "three_seventy_api/api/account"
require "three_seventy_api/api/account_attribute"
require "three_seventy_api/api/account_attribute_category"
require "three_seventy_api/api/account_attribute_definition"
require "three_seventy_api/api/callback"
require "three_seventy_api/api/content"
require "three_seventy_api/api/subscription"
require "three_seventy_api/api/campaign"
require "three_seventy_api/api/event_push_campaign"


# Api endpoints entry module.
module ThreeSeventyApi
  module Api
    # Include every endpoint here.
    # include Account
    # include AccountAttribute
    # include AccountAttributeCategory
    # include AccountAttributeDefinition
    # include Callback
    include Content
    include Subscription
    include Campaign
    include EventPushCampaign
  end
end
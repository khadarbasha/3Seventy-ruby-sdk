require "three_seventy_api/model/content"
require "three_seventy_api/model/subscription"
require "three_seventy_api/model/campaign"
require "three_seventy_api/model/event_push_campaign"

module ThreeSeventyApi
  module Model
    include Base
    include Content
    include Subscription
    include Campaign
    include EventPushCampaign
  end
end
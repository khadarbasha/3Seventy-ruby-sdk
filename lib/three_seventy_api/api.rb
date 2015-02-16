require "three_seventy_api/api/content"
require "three_seventy_api/api/subscription"
require "three_seventy_api/api/campaign"
require "three_seventy_api/api/event_push_campaign"
require "three_seventy_api/api/contact"

# Api endpoints entry module.
module ThreeSeventyApi
  module Api
    # Include every endpoint here.
    include Content
    include Subscription
    include Campaign
    include EventPushCampaign
    include Contact
  end
end
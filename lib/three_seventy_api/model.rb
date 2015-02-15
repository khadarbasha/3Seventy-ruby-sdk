require "three_seventy_api/model/base"
require "three_seventy_api/model/base_audited"
require "three_seventy_api/model/soft_deletable"
require "three_seventy_api/model/content"
require "three_seventy_api/model/subscription"
require "three_seventy_api/model/campaign"
require "three_seventy_api/model/event_push_campaign"

module ThreeSeventyApi
  module Model
    include Base
    include BaseAudited
    include SoftDeletable
    include Content
    include Subscription
    include Campaign
    include EventPushCampaign
  end
end
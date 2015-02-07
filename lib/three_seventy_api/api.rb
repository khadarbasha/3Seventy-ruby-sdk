require "three_seventy_api/api/account"
require "three_seventy_api/api/account_attribute"
require "three_seventy_api/api/account_attribute_category"
require "three_seventy_api/api/account_attribute_definition"
require "three_seventy_api/api/callback"
# Api endpoints entry module.
module ThreeSeventyApi
  module Api
    # Include every endpoint.
    include Account
    include AccountAttribute
    include AccountAttributeCategory
    include AccountAttributeDefinition
    include Callback
  end
end
require "three_seventy_api/api/account"
require "three_seventy_api/api/account_attribute"
require "three_seventy_api/api/account_attribute_category"
require "three_seventy_api/api/account_attribute_definition"
module ThreeSeventyApi
  module Api
    include Account
    include AccountAttribute
    include AccountAttributeCategory
    include AccountAttributeDefinition
  end
end
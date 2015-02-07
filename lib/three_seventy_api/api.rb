require "three_seventy_api/api/account"
require "three_seventy_api/api/account_attribute"
require "three_seventy_api/api/account_attribute_category"
module ThreeSeventyApi
  module Api
    include Account
    include AccountAttribute
    include AccountAttributeCategory
  end
end
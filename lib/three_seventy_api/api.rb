require "three_seventy_api/api/account"
require "three_seventy_api/api/account_attribute"
module ThreeSeventyApi
  module Api
    include Account
    include AccountAttribute
    include AccountAttributeCategory
  end
end
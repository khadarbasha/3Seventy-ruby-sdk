require "./lib/three_seventy_api/version"
require "./lib/three_seventy_api/api"
require "./lib/three_seventy_api/client"
require "./lib/three_seventy_api/helpers/request"

require "rest_client"
module ThreeSeventyApi
  class << self
  end
  autoload :Api, "three_seventy_api/api"
  autoload :Client, "three_seventy_api/client"
  autoload :Helpers, "three_seventy_api/helpers"
end

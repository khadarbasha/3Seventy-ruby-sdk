module ThreeSeventyApi
  module Helpers::Validator::Account
    def self.add
      json = {
        "type" => "object",
        "required" => ["ParentId","Name","Channels","Attributes"],
        "properties" => {
          "ParentId" => {"type" => "string"},
          "Name" => {"type" => "integer"},
          "Channels" => {"type" => "array"},
          "Attributes" => {"type" => "array"}
        }
      }
    end
  end
end
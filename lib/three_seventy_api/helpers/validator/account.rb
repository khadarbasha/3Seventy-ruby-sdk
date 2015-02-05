module ThreeSeventyApi
  module Helpers::Validator::Account
    def self.add_account
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
    def self.edit_account
      add_account
    end
  end
end
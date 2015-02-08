module ThreeSeventyApi
  module Helpers
    module Utils
      def sym_keys_to_str(hash)
        new_hash = {}
        hash.each do |key, value|
          key_ = key.to_s
          new_hash[key_] = v 
        end
        new_hash
      end
    end
  end
end
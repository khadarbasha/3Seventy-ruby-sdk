module ThreeSeventyApi
  module Helpers
    # All Utility methods definition will go here.
    module Utils
      # Convert symbols to string.
      # @param hash [Hash] Hash with keys as symbols.
      # 
      # @return [Hash] Hash with keys as strings.
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
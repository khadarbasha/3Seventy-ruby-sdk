module ThreeSeventyApi
  module Helpers
    module Url
      def url_(*args)
        base_path = "/account/#{account_id}"
        args.each do |arg|
          base_path += "/#{arg}"
        end
        # binding.pry
        # base_path = "/account/#{account_id}/#{args[0]}"
        # base_path += "/#{args[1]}" if args.length > 1
        # 
        return base_path
      end
    end
  end
end
module ThreeSeventyApi
  module Api
    module Account
      def all_accounts(options={})
        options.merge!({:inactive=>false}) if options[:inactive].nil?
        end_point = "/account?inactive=#{options[:inactive]}"
        get(end_point)
      end
    end
  end
end
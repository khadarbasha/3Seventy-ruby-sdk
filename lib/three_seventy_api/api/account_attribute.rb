module ThreeSeventyApi
  module Api
    module AccountAttribute
      def all_attributes(account_id)
        end_point = "/account/#{account_id}/attribute"
        get(end_point)
      end
      def get_attribute(account_id, name)
        end_point = "/account/#{account_id}/attribute/#{name}"
        get(end_point)
      end
      def add_attribute(account_id, name)
        payload = {
          "name" => name
        }
        end_point = "/account/#{account_id}/attribute"
        post(end_point, payload)
      end
      def edit_attribute(account_id, name)
        payload = {
          "name" => name
        }
        end_point = "/account/#{account_id}/attribute"
        put(end_point, payload)
      end
      def delete_attribute(account_id, name)
        end_point = "/account/#{account_id}/attribute/#{name}"
        delete(end_point)
      end
    end
  end
end
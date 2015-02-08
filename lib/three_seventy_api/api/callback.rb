module ThreeSeventyApi
  module Api
    # Callback Api end points implementation goes here.
    module Callback
      def all_callbacks(account_id)
        end_point = "/account/#{account_id}/callback"
        get(end_point)
      end
      def add_callback(account_id, payload)
        end_point = "/account/#{account_id}/callback"
        post(end_point, payload)
      end
      def edit_callback
        end_point = "/account/#{account_id}/callback"
        post(end_point, payload)
      end
      def delete_callback(account_id, callback_id)
        end_point = "/account/#{account_id}/callback/#{callback_id}"
        delete(end_point)
      end
      def get_callback(account_id, callback_id)
        end_point = "/account/#{account_id}/callback/#{callback_id}"
        get(end_point)
      end
    end
  end
end
module ThreeSeventyApi
  module Api
    module Content
      def add_content(account_id, payload)
        end_point = "/account/{account_id}/content"
        post(end_point, payload)
      end
       def get_content(account_id, content_id)
        end_point = "/account/#{account_id}/content/#{content_id}"
        get(end_point)
      end
      def edit_content(account_id, content_id, payload)
        end_point = "/account/#{account_id}/content/#{content_id}"
        put(end_point, payload)
      end
      def delete_content(account_id, content_id)
        end_point = "/account/#{account_id}/content/#{content_id}"
        delete(end_point)
      end
      def all_contents(content_id)
        end_point = "/account/#{account_id}/content"
        get(end_point)
      end
    end
  end
end
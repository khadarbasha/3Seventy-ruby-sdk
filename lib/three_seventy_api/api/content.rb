module ThreeSeventyApi
  module Api
    # Content Api end point implementation goes here.
    # @see https://api.3seventy.com/docs/v2.0/Default/endpoints#!/content
    module Content

      # Add content.
      # 
      # @param account_id [Integer] Id of the account.
      # @param payload [Hash] Body of the content.
      # @option payload [String] Name Content name.
      # @option payload [String] Description Content description.
      # @option payload [Array<Object>] Templates (null) Template array.
      #
      # @return [Object] Newly created content object.
      def add_content(account_id, payload)
        end_point = "/account/#{account_id}/content"
        post(end_point, payload)
      end

      # Retrieve the content.
      # 
      # @param account_id [Integer] Id of the account.
      # @param content_id [Integer] Id of the content.
      # 
      # @return [Object] Content object.
       def get_content(account_id, content_id)
        end_point = "/account/#{account_id}/content/#{content_id}"
        get(end_point)
      end

      # Edit content.
      # 
      # @param account_id [Integer] Id of the account.
      # @param content_id [Integer] Id of the content.
      # @param payload [Hash] Body of the content.
      # @option payload [String] Name Content name.
      # @option payload [String] Description Content description.
      # @option payload [Array<Object>] Templates (null) Template array.
      #
      # @return [Object] Modified content object.
      def edit_content(account_id, content_id, payload)
        end_point = "/account/#{account_id}/content/#{content_id}"
        put(end_point, payload)
      end

      # Delete content.
      # 
      # @param account_id [Integer] Id of the account.
      # @param content_id [Integer] Id of the content.
      #
      # @return none.
      def delete_content(account_id, content_id)
        end_point = "/account/#{account_id}/content/#{content_id}"
        delete(end_point)
      end

      # Get all the contents assosiated with an account.
      # 
      # @param account_id [Integer] Id of the account.
      # 
      # @return [Array<Object>] List all the content. 
      def all_contents(account_id)
        end_point = "/account/#{account_id}/content"
        get(end_point)
      end
    end
  end
end
module ThreeSeventyApi
  module Api
    # Content Api end point implementation goes here.
    # @see https://api.3seventy.com/docs/v2.0/Default/endpoints#!/content
    module Content
      # Add content.
      # 
      # @param payload [Hash] Body of the content.
      # @option payload [String] Name Content name.
      # @option payload [String] Description Content description.
      # @option payload [Array<Object>] Templates (null) Template array.
      #
      # @return [Object] Newly created content object.
      def add_content(payload)
        post(_url("content"), payload)
      end

      # Retrieve the content.
      # 
      # @param content_id [Integer] Id of the content.
      # 
      # @return [Object] Content object.
       def get_content(content_id)
        get(_url("content", content_id))
      end

      # Edit content.
      # 
      # @param content_id [Integer] Id of the content.
      # @param payload [Hash] Body of the content.
      # @option payload [String] Name Content name.
      # @option payload [String] Description Content description.
      # @option payload [Array<Object>] Templates (null) Template array.
      #
      # @return [Object] Modified content object.
      def edit_content(content_id, payload)
        put(_url("content", content_id), payload)
      end

      # Delete content.
      # 
      # @param content_id [Integer] Id of the content.
      #
      # @return none.
      def delete_content(content_id)
        delete(_url("content", content_id))
      end

      # Get all the contents assosiated with an account.
      # 
      # 
      # @return [Array<Object>] List all the content. 
      def all_contents
        get(_url("content"))
      end
    end
  end
end
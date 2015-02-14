module ThreeSeventyApi
  module Api
    # Content Api end point implementation goes here.
    # @see https://api.3seventy.com/docs/v2.0/Default/endpoints#!/content
    module Content

      # Creates a new content group.
      # 
      # @param payload [Hash] Body of the content.
      # @option payload [String] Name The name of the content.
      # @option payload [String] Description Addtional description data.
      # @option payload [Array<Object>] Templates (null) List of templates to create or update along with the content item.
      #
      # @return [Object] Newly created content object.
      def add_content(payload)
        post(_url("content"), payload)
      end

      # Gets a specific content group object.
      # 
      # @param content_id [Integer] Id of the content.
      # 
      # @return [Object] Content object.
       def get_content(content_id)
        get(_url("content", content_id))
      end

      # Updates details about a content group.
      # 
      # @param content_id [Integer] Id of the content.
      # @param payload [Hash] Body of the content.
      # @option payload [String] Name The name of the content.
      # @option payload [String] Description Addtional description data.
      # @option payload [Array<Object>] Templates (null) List of templates to create or update along with the content item.
      # 
      # @return [Object] Modified content object.
      def edit_content(content_id, payload)
        put(_url("content", content_id), payload)
      end

      # Deletes a content group.
      # 
      # @param content_id [Integer] Id of the content.
      #
      # @return none.
      def delete_content(content_id)
        delete(_url("content", content_id))
      end

      # Lists all content group objects on an account.
      # 
      # 
      # @return [Array<Object>] List all the content. 
      def all_contents
        get(_url("content"))
      end
    end
  end
end
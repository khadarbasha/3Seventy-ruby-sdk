require 'three_seventy_api'
require 'yaml'
# Example to add a new content.
class EditContent
  def run
    # Load the config file
    config = YAML.load_file(File.expand_path("../../config.yml", __FILE__))
    # Load the account_id from config.
    account_id = config['account_id']
    # Load the url from config.
    url = config['url']
    # Load the username from config.
    username = config['username']
    # Load the password from config.
    password = config['password']
    # Load ur payload here.
    payload = {
      "Name" => ## Fill content name here.,
      "Description" => ## Fill content description here.,
    }
    content_id = # Fill content id here.
    # Initiate the client.
    client = ThreeSeventyApi::Client.new(url, username, password)
    # Now make a call to EditContent api and print the result.
    puts client.edit_content(account_id, content_id, payload)
  end
end
example = EditContent.new
example.run
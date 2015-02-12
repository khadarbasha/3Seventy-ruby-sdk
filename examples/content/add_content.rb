require 'three_seventy_api'
require 'yaml'
# Example to add new content.
class AddContent
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
      "Name" => ,## Fill content name here.,
      "Description" =>## Fill content description here.
    }
    # Initiate the client.
    client = ThreeSeventyApi::Client.new(url, username, password, account_id)
    # Now make a call to AddCallback api and print the result.
    puts client.add_content(payload)
  end
end
example = AddContent.new
example.run
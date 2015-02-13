require 'three_seventy_api'
require 'yaml'
# Example to add new callback.
class AddCallback
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
      "CallbackType" => ## Fill callback type here.,
      "URL" => ## Fill url here,
      "Active" => ## Fill whether to enable this callback or not.
    }
    # Initiate the client.
    client = ThreeSeventyApi::Client.new(url, username, password)
    # Now make a call to AddCallback api and print the result.
    puts client.add_callback(account_id, payload)
  end
end
example = AddCallback.new
example.run
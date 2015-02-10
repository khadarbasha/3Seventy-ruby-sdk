require 'three_seventy_api'
require 'yaml'
# Example to add a new subscription.
class AddSubscription
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
      "Label" =>## Fill content description here.
    }
    # Initiate the client.
    client = ThreeSeventyApi::Client.new(url, username, password)
    # Now make a call to AddSubscription api and print the result.
    puts client.add_subscription(account_id, payload)
  end
end
example = AddSubscription.new
example.run
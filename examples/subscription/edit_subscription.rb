require 'three_seventy_api'
require 'yaml'
# Example to edit a subscription.
class EditSubscription
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
      "Name" => "lw_1",## Fill content name here.,
      "Label" =>"llw_l1"# Fill content description here.
    }
    subscription_id = #Load ur subscription id here.
    # Initiate the client.
    client = ThreeSeventyApi::Client.new(url, username, password, account_id)
    # Now make a call to EditSubscription api and print the result.
    puts client.edit_subscription(subscription_id, payload)
  end
end
example = EditSubscription.new
example.run
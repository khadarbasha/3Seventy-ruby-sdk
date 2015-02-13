require 'three_seventy_api'
require 'yaml'
# Example to get the subscription.
class GetSubscription
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
    subscription_id = # Fill with subscription id here.
    # Initiate the client.
    client = ThreeSeventyApi::Client.new(url, username, password, account_id)
    # Now make a call to GetSubscription api and print the result.
    puts client.get_subscription(subscription_id)
  end
end
example = GetSubscription.new
example.run
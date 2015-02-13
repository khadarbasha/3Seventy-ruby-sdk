require 'three_seventy_api'
require 'yaml'
# Example to list all the campaigns.
class AllCampaigns
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
    # Initiate the client.
    visibility =  # Set all the campaigns visibility here.
    client = ThreeSeventyApi::Client.new(url, username, password, account_id)
    # Now make a call to AllCampaigns api and print the result.
    puts client.all_campaigns(visibility)
  end
end
example = AllCampaigns.new
example.run
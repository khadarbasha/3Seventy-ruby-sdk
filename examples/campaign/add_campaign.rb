require 'three_seventy_api'
require 'yaml'
# Example to add a new campaign.
class AddCampaign
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
      "SubscriptionId" => , ## Fill subscription id here,
      "Name" => , ## Fill campaign name here.,
      "CampaignTypeId" => ,## Fill campaign id here.,
      "Content" => {
        "Name" => ,## Fill content name here.,
        "Description" => ## Fill the content description here.,
      }
    }
    # Initiate the client.
    client = ThreeSeventyApi::Client.new(url, username, password, account_id)
    # Now make a call to AddCampaign api and print the result.
    puts client.add_campaign(payload)
  end
end
example = AddCampaign.new
example.run
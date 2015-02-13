require 'three_seventy_api'
require 'yaml'
# Example to push a new event campaign.
class AddEventPushCampaign
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
      "ChannelId" => , ## Fill channel id here.
      "CampaignId" => , ## Fill campaign id here.
      "Targets" =>  ## Fill targets here.
    }
    # Initiate the client.
    client = ThreeSeventyApi::Client.new(url, username, password, account_id)
    # Now make a call to AddEventPushCampaign api and print the result.
    puts client.add_event_push_campaign(payload)
  end
end
example = AddEventPushCampaign.new
example.run
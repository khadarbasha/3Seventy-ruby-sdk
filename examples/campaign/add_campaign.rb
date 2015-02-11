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
      "SubscriptionId" => "402", ## Fill subscription id here
      "Name" => "campaign1", ## Fill campaign name here.
      "CampaignTypeId" => "1", ## Fill campaign id here.
      "Content" => {
        "Name" => "testcampaign1", ## Fill content name here.
        "Description" => "testcampaign1 desc" ## Fill the content description here.
      }
    }
    # Initiate the client.
    client = ThreeSeventyApi::Client.new(url, username, password)
    # Now make a call to AddCampaign api and print the result.
    puts client.add_campaign(account_id, payload)
  end
end
example = AddCampaign.new
example.run
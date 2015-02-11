require 'three_seventy_api'
require 'yaml'
# Example to edit a new campaign.
class EditCampaign
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
    campaign_id = 4483 ## Add campaign_id here.
    # Load the payload here.
    payload = {
      "SubscriptionId" => "402", ## Fill subscription id here
      "Name" => "campaign1edit1", ## Fill campaign name here.
      "CampaignTypeId" => "1", ## Fill campaign id here.
      "Content" => {
        "Name" => "testcampaign1", ## Fill content name here.
        "Description" => "testcampaign1 desc" ## Fill the content description here.
      }
    }
    # Initiate the client.
    client = ThreeSeventyApi::Client.new(url, username, password)
    # Now make a call to EditCampaign api and print the result.
    puts client.edit_campaign(account_id, campaign_id, payload)
  end
end
example = EditCampaign.new
example.run
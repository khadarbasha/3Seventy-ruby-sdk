# Public:  Details of a callback the Vector servers will make when an event occurs.
# Callbacks provide a way to greatly customize the behavior of a campaign.
# Extends the Base class.
class Callback < Base
  # Public: 
  #       setter/getter for account_id.
  #       Represents the account_id to which this callback occurs.
  attr_accessor :account_id
  # Public: 
  #       setter/getter for callback_type.
  #       Represents the type of event which will trigger the callback.
  #       Different callback types will send different sets of data.
  attr_accessor :callback_type
  # Public: 
  #       setter/getter for url.
  #       Represents the URL that will be called when the callback type event occurs.
  attr_accessor :url
  # Public: 
  #       setter/getter for is_active.
  #       Represents the control to turn on/off the callback.
  attr_accessor :is_active
  # Public: Creates the json structure for a callback object.
  #
  # Examples
  #
  #   json_
  #
  # Returns the json structure for a callback object.
  def json_
    hash = {
      "Id" => id,
      "accountId" => account_id,
      "CallbackType" => callback_type,
      "Url" => url,
      "Active" => is_active
    }
    hash.to_json
  end
end
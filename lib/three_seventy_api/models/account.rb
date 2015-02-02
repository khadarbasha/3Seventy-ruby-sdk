# Public: Details for an account.
# Extends Base class.
class Account < Base
  # Public: 
  #       setter/getter for Status.
  #       Represents the current status of the account.
  #       This is the soft delete status.
  attr_accessor :status
  # Public: 
  #       setter/getter for parent_id.
  #       Represents the parent id of the current account.
  #       This will be null for the root account.
  attr_accessor :parent_id
  # Public: 
  #       setter/getter for name.
  #       Represents the name of the current account.
  #       This will be null for the root account.
  attr_accessor :name
  # Public: 
  #       setter/getter for created.
  #       Represents the date/time the account was created.
  attr_accessor :created
  # Public: 
  #       setter/getter for allow_callback.
  #       Represents whether callback is allowed for an account or not.
  attr_accessor :allow_callback
  # Public: 
  #       setter/getter for callback_token.
  #       Represents token that is used when making callbacks.
  #       When 3Seventy makes a callback this token will be sent along with that callback request.
  #       This token can be whatever GUID of your choosing.
  attr_accessor :callback_token
  # Public: Creates the json structure for an account object.
  #
  # Examples
  #
  #   json_
  #
  # Returns the json structure for an account object.
  def json_
    hash = {
      "Id" => id,
      "Status" => status,
      "ParentId" => parent_id,
      "Name" => name,
      "Created" => created,
      "AllowCallback" => allow_callback,
      "CallbackToken" => callback_token
    }
    hash.to_json
  end
end
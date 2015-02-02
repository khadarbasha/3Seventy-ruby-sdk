# Public: Details of a channel that messages are sent out on.
# Extends the Base class.
class Channel < Base
  # Public: 
  #       setter/getter for type_id.
  #       Represents the ID of channel's type.
  attr_accessor :type_id
  # Public: 
  #       setter/getter for name.
  #       Represents the channel name.
  attr_accessor :name
  # Public: 
  #       setter/getter for label.
  #       Represents the channel's label.
  attr_accessor :label
  # Public: 
  #       setter/getter for description.
  #       Represents the channel's description.
  attr_accessor :description
  # Public: 
  #       setter/getter for default_language_id.
  #       Represents the Id of default channel's language.
  attr_accessor :default_language_id
  # Public: 
  #       setter/getter for is_active.
  #       Represents whether channel is active or not.
  attr_accessor :is_active
  # Public: 
  #       setter/getter for override_group.
  attr_accessor :override_group
  # Public: Creates the json structure for the channel object.
  #
  # Examples
  #
  #   json_
  #
  # Returns the json structure for the channel object.
  
  def json_
    hash = {
      "Id" => id,
      "type" => type_id,
      "Name" => name,
      "Label" => label,
      "Description" => description,
      "DefaultLanguageId" => default_language_id,
      "IsActive" => is_active,
      "OverrideGroup" => override_group
    }
    hash.to_json
  end
end
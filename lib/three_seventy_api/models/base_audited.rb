# Public: Base class for objects with audit information.
# Extends the Base class.
class BaseAudited < Base
  # Public: 
  #       setter/getter for created.
  #       Represents the resource creation date/time.
  attr_accessor :created
  # Public: 
  #       setter/getter for created_by.
  #       Represents the person who created the resource.
  attr_accessor :created_by
  # Public: 
  #       setter/getter for modified.
  #       Represents the date/time when the resource was modified.
  attr_accessor :modified
  # Public: 
  #       setter/getter for modified_by.
  #       Represents the person who modified the resource.
  attr_accessor :modified_by
  # Public: Creates the json structure for BaseAudited object.
  #
  # Examples
  #
  #   json_
  #
  # Returns the json structure for BaseAudited object.
  def json_
    hash = {
      "Id" => id,
      "Created" => created,
      "CreatedBy" => created_by,
      "Modified" => modified,
      "ModifiedBy" => modified_by
    }
    hash.to_json
  end
end
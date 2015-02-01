class Channel < Base
  attr_accessor :type_id
  attr_accessor :name
  attr_accessor :label
  attr_accessor :description
  attr_accessor :default_language_id
  attr_accessor :is_active
  attr_accessor :override_group
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
class BaseAudited < Base
  attr_accessor :created
  attr_accessor :created_by
  attr_accessor :modified
  attr_accessor :modified_by
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
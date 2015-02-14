class Contact < SoftDeletable
  attr_accessor :account_id
  attr_accessor :phone_number
  attr_accessor :email
  attr_accessor :attributes
  attr_accessor :subscriptions
  def json_
    hash = {
      "Id" => id,
      "AccountId" => account_id,
      "PhoneNumber" => phone_number,
      "Email" => email,
      "Attributes" => attributes,
      "Subscriptions" => subscriptions
    }
    hash.to_json
  end
end
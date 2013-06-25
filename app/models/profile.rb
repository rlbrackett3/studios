class Profile
  include Mongoid::Document
  include Mongoid::Timestamps

  field :fname, type: String, default: ''
  field :lname, type: String, default: ''

  field :bio,   type: String

  field :tel,   type: Integer
  field :uid,   type: String, default: ''

  # Associations
  embedded_in :user
  embeds_many :websites
end

class Website
  include Mongoid::Document
  include Mongoid::Timestamps

  field :url, type: String

  # Associations
  embedded_in :profile

end
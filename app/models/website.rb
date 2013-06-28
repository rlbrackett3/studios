class Website
  include Mongoid::Document
  include Mongoid::Timestamps

  field :url, type: String

  # Associations
  embedded_in :profile

  # Validations
  validates :url, presence: true,
                  uniqueness: true,
                  format: URI::regexp(%w(http https))

end
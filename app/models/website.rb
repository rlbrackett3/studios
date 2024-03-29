class Website
  include Mongoid::Document
  include Mongoid::Timestamps

  field :url,     type: String
  field :title,   type: String
  field :handle,  type: String

  # Associations
  embedded_in :profile

  # Validations
  validates :url,   presence: true,
                    format: URI::regexp(%w(http https)),
                    allow_blank: true
  validates :title, presence: true

end
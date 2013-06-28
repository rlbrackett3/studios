class Profile
  include Mongoid::Document
  include Mongoid::Timestamps

  field :fname,       type: String#, default: ''
  field :lname,       type: String#, default: ''

  field :bio,         type: String

  field :tel,         type: Integer
  field :school_id,   type: String#, default: ''

  # Associations
  embedded_in :user
  embeds_many :websites

  # Validations
  validates :user,  presence: true
  validates :fname, length: {minimum: 2, maximum: 24},
                    allow_blank: true
  validates :lname, length: {minimum: 2, maximum: 24},
                    allow_blank: true
  validates :bio,   length: {minimum: 2},
                    allow_blank: true

end

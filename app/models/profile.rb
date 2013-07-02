class Profile
  include Mongoid::Document
  include Mongoid::Timestamps
  # include Mongoid::Markdown

  field :fname,           type: String#, default: ''
  field :lname,           type: String#, default: ''

  field :bio,             type: String#, markdown: true

  field :tel,             type: Integer
  field :school,          type: String#, default: ''

  field :website,         type: String
  field :portfolio,       type: String
  field :blog,            type: String
  field :twitter_handle,  type: String
  field :twitter_url,     type: String
  field :facebook_url,    type: String
  field :google_url,      type: String
  field :linkdin_url,     type: String

  mount_uploader :avatar, AvatarUploader

  # Associations
  embedded_in :user
  # embeds_many :websites

  # accepts_nested_attributes_for :websites, allow_destroy: true

  # Validations
  validates :user,  presence: true
  validates :fname, length: {minimum: 2, maximum: 24},
                    allow_blank: true
  validates :lname, length: {minimum: 2, maximum: 24},
                    allow_blank: true
  validates :bio,   length: {minimum: 2},
                    allow_blank: true
  validates :website, :portfolio, :blog, :twitter_url, :facebook_url, :google_url, :linkdin_url,
                    format: URI::regexp(%w(http https)),
                    allow_blank: true

end

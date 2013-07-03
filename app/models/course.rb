class Course
  include Mongoid::Document
  include Mongoid::Timestamps

  # Check out Amoeba gem for duplicating records with parameters

  field :title,         type: String
  field :description,   type: String
  field :school,        type: String
  field :number,        type: String


  field :term,          type: String
  field :start_date,    type: Date
  field :end_date,      type: Date

  field :published,     type: Boolean, default: false

  # Associations
  has_and_belongs_to_many :users

  # Validations
  validates :title,         presence: true,
                            length: {minimum: 2, maximum: 55}
  validates :description,   length: {minimum: 5},
                            allow_blank: true

end

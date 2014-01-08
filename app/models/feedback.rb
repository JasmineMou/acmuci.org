class Feedback
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :name, :email, :message

  # validations
  validates :name, presence: true
  validates_presence_of :email
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :message, presence: true

  def initialize(attributes = {})
    attributes.each do |k, v|
      send("#{k}", v)
    end
  end

  def persisted?
    false
  end
end
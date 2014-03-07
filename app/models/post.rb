class Post < ActiveRecord::Base
  has_many :comments
  belongs_to :category
  has_one :admin_user
end

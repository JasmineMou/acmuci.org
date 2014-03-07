class Post < ActiveRecord::Base
  belongs_to :category
  has_one :admin_user
end

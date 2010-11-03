class Post < ActiveRecord::Base
  # Associations
  belongs_to :user
  has_many :comments
end

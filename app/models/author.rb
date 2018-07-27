class Author < ApplicationRecord
  validates_presence_of :name

  has_many :posts
  has_many :comments
end

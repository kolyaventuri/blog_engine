class Post < ApplicationRecord
  validates_presence_of :title

  belongs_to :author
  has_many :comments
end

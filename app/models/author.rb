class Author < ApplicationRecord
  validates_presence_of :name

  has_many :posts
  has_many :comments

  def self.from_omniauth(auth_info)
    author = Author.where(uid: auth_info['uid']).first

    unless author
      author = Author.create(uid: auth_info['uid'], name: auth_info['info']['name'])
    end

    author
  end
end

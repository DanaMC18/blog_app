class Topic < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :pictures
  has_many :tags
  has_many :likes
end
class Message < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  has many :comments, as: :commentable
end

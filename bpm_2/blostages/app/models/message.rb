class Message < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  has many :comments, as: :comments
end

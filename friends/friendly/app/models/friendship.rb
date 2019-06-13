class Friendship < ActiveRecord::Base
  belongs_to :user, class_name:"User", foreign_key:"user_id"
  belongs_to :friend, foreign_key:"friend_id", class_name:"User"
  has_many :users, class_name: "User"
end

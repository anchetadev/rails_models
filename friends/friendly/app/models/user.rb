class User < ActiveRecord::Base
    has_many :friendships, class_name: "Friendship", foreign_key:"user_id"
    has_many :friends, through: :friendships
    # belongs_to :friendship, class_name:"User"
end


# not friends with anyone
# User.includes(:friendships).where(:friendships=>{:user_id =>nil})
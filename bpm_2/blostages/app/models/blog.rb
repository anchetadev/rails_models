class Blog < ActiveRecord::Base
    has_many :owners
    has_many :users, through: :owners
    has_many :posts
    has many :comments, as: :comments
end

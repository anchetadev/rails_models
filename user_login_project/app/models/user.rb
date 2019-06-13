class User < ActiveRecord::Base
    validates :email,:age, presence: true
    validates :first_name, :last_name, length: {in:2..100}
    validates_numericality_of :age, greater_than: 5
    validates_numericality_of :age, less_than: 150
end

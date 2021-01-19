class User < ActiveRecord::Base
    validates_presence_of :name, :email, :password
    validates :email, uniqueness: true 
    has_secure_password 
    has_many :goals

end
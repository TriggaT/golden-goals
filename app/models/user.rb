class User < ActiveRecord::Base
    validates_presence_of :name, :email, :password
    has_secure_password 
    has_many :goals

    def slug
        name.downcase.gsub(" ","-")
    end
    
    def self.find_by_slug(slug)
        Goal.all.find { |goal| goal.slug == slug }
    end

end
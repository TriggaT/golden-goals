class Goal < ActiveRecord::Base
    validates_presence_of :title, :description, :motivation, :estimated_completion_date
    belongs_to :user

    def slug
        title.downcase.gsub(" ","-")
    end
    
    def self.find_by_slug(slug)
        Goal.all.find {|goal| goal.slug == slug }
     
    end
end
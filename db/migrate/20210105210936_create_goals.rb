class CreateGoals < ActiveRecord::Migration[5.1]
  def change
    create_table :goals do |t|
      t.string :title 
      t.string :status
      t.string :motivation
      t.string :description
      t.date :estimated_completion_date
    end 
  end
end

class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.string :name
      t.text :description
      t.string :level
      t.belongs_to :unit
    end
  end
end



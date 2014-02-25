class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :number
      t.belongs_to :phase
    end
  end
end

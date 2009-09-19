class CreateResults < ActiveRecord::Migration
  def self.up
    create_table :results do |t|
      t.string :start_number
      t.string :category
      t.string :team
      t.date :liquid_time
      t.date :official_time
      t.integer :class_general
      t.integer :class_sex
      t.integer :class_category
      t.date :pace
      t.string :substitute

      t.timestamps
    end
  end

  def self.down
    drop_table :results
  end
end

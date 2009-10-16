class CreateResults < ActiveRecord::Migration
  def self.up
    create_table :results do |t|
      t.string :start_number
      t.string :category, :limit => 10
      t.string :team
      t.datetime :liquid_time
      t.datetime :official_time
      t.integer :class_general, :limit => 5
      t.integer :class_sex, :limit => 5
      t.integer :class_category, :limit => 5
      t.datetime :pace
      t.string :distance, :limit => 10
      t.string :substitute
      t.text :notes

      t.timestamps
    end
  end

  def self.down
    drop_table :results
  end
end

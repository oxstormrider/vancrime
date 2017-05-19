class CreateCrimes < ActiveRecord::Migration[5.1]
  def change
    create_table :crimes do |t|
      t.references :offence
      t.references :site
      t.integer :year
      t.integer :month
      t.integer :day
      t.integer :hour
      t.integer :minute
    end
    add_index :crimes, :year
    add_index :crimes, :month
    add_index :crimes, :day
    add_index :crimes, :hour
    add_index :crimes, :minute
  end
end

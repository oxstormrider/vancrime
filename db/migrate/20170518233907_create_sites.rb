class CreateSites < ActiveRecord::Migration[5.1]
  def change
    create_table :sites do |t|
      t.string :neighbourhood
    end
    add_index :sites, :neighbourhood
  end
end

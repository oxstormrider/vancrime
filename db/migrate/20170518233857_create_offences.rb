class CreateOffences < ActiveRecord::Migration[5.1]
  def change
    create_table :offences do |t|
      t.string :description
    end
    add_index :offences, :description
  end
end

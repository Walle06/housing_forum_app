class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.string :size
      t.string :location
      t.string :address
      t.string :contact

      t.timestamps null: false
    end
  end
end

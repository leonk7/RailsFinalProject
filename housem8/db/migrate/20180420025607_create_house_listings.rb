class CreateHouseListings < ActiveRecord::Migration[5.1]
  def change
    create_table :house_listings do |t|
      t.string :title
      t.text :description
      t.integer :price
      t.string :lease_term
      t.string :address
      t.integer :owner_id

      t.timestamps
    end
  end
end

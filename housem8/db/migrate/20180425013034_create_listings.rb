class CreateListings < ActiveRecord::Migration[5.1]
  def change
    create_table :listings do |t|
      t.string :title
      t.text :description
      t.string :address
      t.integer :price
      t.string :lease_term

      t.timestamps
    end
  end
end

class CreateHouseOwners < ActiveRecord::Migration[5.1]
  def change
    create_table :house_owners do |t|
      t.string :listing
      t.string :name
      t.string :gender

      t.timestamps
    end
  end
end

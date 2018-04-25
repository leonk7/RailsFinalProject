class CreateMatches < ActiveRecord::Migration[5.1]
  def change
    create_table :matches do |t|
      t.integer :houseowner
      t.integer :houseseeker
      t.integer :house

      t.timestamps
    end
  end
end

class CreateHouseSeekers < ActiveRecord::Migration[5.1]
  def change
    create_table :house_seekers do |t|
      t.string :name
      t.string :gender
      t.integer :age
      t.string :email
      t.integer :min_price
      t.integer :max_price

      t.timestamps
    end
  end
end

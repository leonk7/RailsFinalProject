class AddHouseOwnerRefToListings < ActiveRecord::Migration[5.1]
  def change
    add_reference :listings, :house_owner, foreign_key: true
  end
end

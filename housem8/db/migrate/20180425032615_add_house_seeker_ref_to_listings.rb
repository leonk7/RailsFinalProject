class AddHouseSeekerRefToListings < ActiveRecord::Migration[5.1]
  def change
    add_reference :listings, :house_seeker, foreign_key: true
  end
end

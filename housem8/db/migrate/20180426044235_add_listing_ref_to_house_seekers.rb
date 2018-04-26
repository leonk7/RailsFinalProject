class AddListingRefToHouseSeekers < ActiveRecord::Migration[5.1]
  def change
    add_reference :house_seekers, :listing, foreign_key: true
  end
end

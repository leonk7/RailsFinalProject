class AddLikesToListing < ActiveRecord::Migration[5.1]
  def change
    add_column :listings, :likes, :integer
  end
end

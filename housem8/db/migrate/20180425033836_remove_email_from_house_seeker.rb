class RemoveEmailFromHouseSeeker < ActiveRecord::Migration[5.1]
  def change
    remove_column :house_seekers, :email, :string
  end
end

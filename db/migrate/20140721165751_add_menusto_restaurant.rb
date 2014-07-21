class AddMenustoRestaurant < ActiveRecord::Migration
  def change
  	add_column :restaurants, :menu , :string
  end
end


class AddProductsCountToRestaurant < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurants, :products_count, :integer, default: 0, null: false
    
    reversible do |dir|
      dir.up { data }
    end
  end

  def data
    execute <<-SQL.squish
      UPDATE restaurants
        SET products_count = (SELECT count(1)
                                FROM products
                               WHERE products.restaurant_id = restaurants.id)
    SQL
  end
end

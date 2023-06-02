class AddCheeseToTacos < ActiveRecord::Migration[7.0]
  def change
    add_column :tacos, :chesse, :string
  end
end

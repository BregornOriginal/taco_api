class CreateTacos < ActiveRecord::Migration[7.0]
  def change
    create_table :tacos do |t|
      t.string :meat
      t.boolean :rice
      t.boolean :salsa
      t.string :notes

      t.timestamps
    end
  end
end

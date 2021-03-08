class CreateBusinesses < ActiveRecord::Migration[6.1]
  def change
    create_table :businesses do |t|
      t.integer :owner_id
      t.integer :hour_id
      t.integer :category_id
      t.string :name

      t.string :phone
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip

      t.timestamps
    end
  end
end

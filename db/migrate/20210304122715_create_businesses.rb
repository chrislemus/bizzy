class CreateBusinesses < ActiveRecord::Migration[6.1]
  def change
    create_table :businesses do |t|
      t.references :review, foreign_key: true
      t.references :owner_id, foreign_key: true
      t.string :hours
      t.string :phone
      t.string :address
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps
    end
  end
end

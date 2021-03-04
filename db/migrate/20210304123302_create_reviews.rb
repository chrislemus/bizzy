class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :description
      t.references :user_id, null: false, foreign_key: true
      t.references :business_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end

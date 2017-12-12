class CreatePurchaseHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :purchase_histories do |t|
      t.references :user, foreign_key: true
      t.references :item, foreign_key: true
      t.integer :status, default: 0
      t.string :delivery_name
      t.string :delivery_address
      t.integer :delivery_postal_code

      t.timestamps
    end
  end
end

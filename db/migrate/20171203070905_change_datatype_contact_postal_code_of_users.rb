class ChangeDatatypeContactPostalCodeOfUsers < ActiveRecord::Migration[5.1]
  def change
  	change_column :users, :contact_postal_code, :string
  	change_column :purchase_histories, :delivery_postal_code, :string
  end
end

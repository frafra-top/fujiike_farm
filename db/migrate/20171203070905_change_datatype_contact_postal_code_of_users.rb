class ChangeDatatypeContactPostalCodeOfUsers < ActiveRecord::Migration[5.1]
  def change
  	change_column :users, :contact_postal_code, :string
  	change_column :users, :delivery_postal_code, :string
  end
end

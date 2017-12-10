class AddColumnToUser < ActiveRecord::Migration[5.1]
  def change
  	add_column :users, :name, :string
    add_column :users, :contact_name, :string
  	add_column :users, :contact_address, :string
  	add_column :users, :contact_postal_code, :integer
    add_column :users, :delivery_name, :string
  	add_column :users, :delivery_address, :string
  	add_column :users, :delivery_postal_code, :integer
  	add_column :users, :phone, :string

  	add_column :users, :admin, :boolean, default: false
  end
end

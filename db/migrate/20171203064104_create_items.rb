class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :price
      t.text :content
      t.boolean :exist, default: true, null: false

      t.timestamps
    end
  end
end

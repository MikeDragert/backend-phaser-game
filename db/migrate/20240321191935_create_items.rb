class CreateItems < ActiveRecord::Migration[7.1]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :item_type
      t.boolean :has_obtained

      t.timestamps
    end
  end
end

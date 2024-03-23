class CreateItems < ActiveRecord::Migration[7.1]
  def change
    create_table :items, id: :serial do |t|
      t.string "name"
      t.integer "item_type"
    end
  end
end

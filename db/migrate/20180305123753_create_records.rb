class CreateRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :records do |t|
      t.string :name
      t.string :item_name
      t.float :price

      t.timestamps
    end
  end
end

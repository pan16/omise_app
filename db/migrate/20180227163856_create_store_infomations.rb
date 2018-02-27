class CreateStoreInfomations < ActiveRecord::Migration[5.1]
  def change
    create_table :store_infomations do |t|
      t.integer :store_id
      t.string :address
      t.string :phone
      t.string :holiday
      t.string :business_hour
      t.string :category
      t.string :menu

      t.timestamps
    end
  end
end

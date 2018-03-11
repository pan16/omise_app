class CreateStoreInfomations < ActiveRecord::Migration[5.1]
  def change
    create_table :store_infomations, id: false do |t|
      t.integer :id, null: false
      t.integer :store_id
      t.string :address
      t.string :phone
      t.integer :holiday1
      t.integer :holiday2
      t.integer :holiday3
      t.string :business_hour
      t.integer :category, default: 0
      t.string :point_url

      t.timestamps
    end
    add_index :store_infomations, :id, unique: true
  end
end

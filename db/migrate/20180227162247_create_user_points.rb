class CreateUserPoints < ActiveRecord::Migration[5.1]
  def change
    create_table :user_points do |t|
      t.integer :user_id
      t.integer :store_id
      t.integer :points

      t.timestamps
    end
  end
end

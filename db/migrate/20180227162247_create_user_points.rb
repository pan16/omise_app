class CreateUserPoints < ActiveRecord::Migration[5.1]
  def change
    create_table :user_points do |t|
      t.references :user
      t.references :store
      t.integer :points

      t.timestamps
    end
  end
end

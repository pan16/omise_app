class CreateStores < ActiveRecord::Migration[5.1]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :token_digest

      t.timestamps
    end
  end
end

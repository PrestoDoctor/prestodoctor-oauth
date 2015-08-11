class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :presto_token

      t.timestamps null: false
    end
    add_index :users, :email
  end
end

class AddPrestoIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :presto_id, :string
    add_index :users, :presto_id
  end
end

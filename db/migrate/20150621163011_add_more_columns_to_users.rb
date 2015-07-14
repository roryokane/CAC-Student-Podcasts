class AddMoreColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string, null: false
    add_column :users, :display_name, :string, default: ""

    add_index :users, :username, unique: true
    #add_index :users, :display_name, unique: true
  end
end

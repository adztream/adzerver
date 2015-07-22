class AddAnotherFieldsForUsers < ActiveRecord::Migration
  def up
    add_column :users, :username, :string
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :role, :string
  end

  def down
    remove_column :users, :username
    remove_column :users, :firstname
    remove_column :users, :lastname
    remove_column :users, :role
  end
end

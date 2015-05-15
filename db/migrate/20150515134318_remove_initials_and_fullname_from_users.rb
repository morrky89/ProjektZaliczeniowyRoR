class RemoveInitialsAndFullnameFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :initials, :string
    remove_column :users, :fullname, :string
  end
end

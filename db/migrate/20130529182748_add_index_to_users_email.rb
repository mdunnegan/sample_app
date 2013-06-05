class AddIndexToUsersEmail < ActiveRecord::Migration
  def change
  	add_index :users, :email, unique: true # adds index to users emails so stuff don't get fd up
  end
end

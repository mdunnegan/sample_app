# first migration from 6.1

class CreateUsers < ActiveRecord::Migration
  def change  # any change to a database
    create_table :users do |t| #t = table, this create_table method naturally accepts a block argument
      t.string :name
      t.string :email
      t.timestamps
    end
  end
end

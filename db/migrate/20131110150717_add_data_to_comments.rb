class AddDataToComments < ActiveRecord::Migration
  def change
    add_column :comments, :username, :string
    add_column :comments, :email, :string
  end
end

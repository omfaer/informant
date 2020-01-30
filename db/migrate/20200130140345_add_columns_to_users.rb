class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :ip, :string
    add_column :users, :country, :string
    add_column :users, :city, :string
  end
end

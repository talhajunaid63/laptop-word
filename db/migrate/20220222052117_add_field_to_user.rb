class AddFieldToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :user_name, :string
    add_column :users, :city, :string
    add_column :users, :Address, :string
    add_column :users, :postal_code, :integer
  end
end

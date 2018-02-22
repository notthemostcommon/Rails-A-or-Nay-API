class UpdateColumnsInUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :name
    add_column :users, :f_name, :string
    add_column :users, :l_name, :string
  end
end

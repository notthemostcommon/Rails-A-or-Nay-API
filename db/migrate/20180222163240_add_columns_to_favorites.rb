class AddColumnsToFavorites < ActiveRecord::Migration[5.1]
  def change
    add_column :favorites, :dba, :string
    add_column :favorites, :camis, :string
    add_column :favorites, :bldg, :string
    add_column :favorites, :street, :string
    add_column :favorites, :boro, :string
    add_column :favorites, :zip, :string
    add_column :favorites, :user_id, :integer

  end
end

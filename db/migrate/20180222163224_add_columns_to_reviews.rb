class AddColumnsToReviews < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :review, :string
    add_column :reviews, :rating, :integer
    add_column :reviews, :dba, :string
    add_column :reviews, :camis, :string
    add_column :reviews, :bldg, :string
    add_column :reviews, :street, :string
    add_column :reviews, :boro, :string
    add_column :reviews, :zip, :string
    add_column :reviews, :user_id, :integer
  end
end

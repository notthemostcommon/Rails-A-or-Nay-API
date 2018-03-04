class AddColumnsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :admin, :boolean, default: false
    add_column :users, :remember_digest, :string
    add_column :users, :access_token, :string, index: true, unique: true
    add_column :users, :reset_digest, :string
    add_column :users, :reset_sent_at, :datetime
  end
end

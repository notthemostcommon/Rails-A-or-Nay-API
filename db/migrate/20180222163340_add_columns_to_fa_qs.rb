class AddColumnsToFaQs < ActiveRecord::Migration[5.1]
  def change
    add_column :faqs, :question, :string
    add_column :faqs, :answer, :string
  end
end

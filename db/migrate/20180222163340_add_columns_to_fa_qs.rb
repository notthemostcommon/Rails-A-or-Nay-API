class AddColumnsToFaQs < ActiveRecord::Migration[5.1]
  def change
    add_column :FAQs, :question, :string
    add_column :FAQs, :answer, :string
  end
end

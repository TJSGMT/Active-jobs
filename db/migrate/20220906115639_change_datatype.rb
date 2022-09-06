class ChangeDatatype < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :contact, :string
  end
end

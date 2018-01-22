class AddNameToPosition < ActiveRecord::Migration[5.1]
  def change
    add_column :positions, :name, :string
  end
end

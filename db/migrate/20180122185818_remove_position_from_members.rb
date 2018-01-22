class RemovePositionFromMembers < ActiveRecord::Migration[5.1]
  def change
    remove_column :members, :position, :string
  end
end

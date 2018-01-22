class RemovePositionIdFromMembers < ActiveRecord::Migration[5.1]
  def change
    remove_column :members, :position_id, :integer
  end
end

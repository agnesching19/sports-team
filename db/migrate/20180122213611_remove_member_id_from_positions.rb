class RemoveMemberIdFromPositions < ActiveRecord::Migration[5.1]
  def change
    remove_column :positions, :member_id, :bigint
  end
end

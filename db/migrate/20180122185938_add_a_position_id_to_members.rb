class AddAPositionIdToMembers < ActiveRecord::Migration[5.1]
  def change
    add_column :members, :position_id, :integer
  end
end

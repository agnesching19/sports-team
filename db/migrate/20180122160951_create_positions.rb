class CreatePositions < ActiveRecord::Migration[5.1]
  def change
    create_table :positions do |t|
      t.references :member, foreign_key: true
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end

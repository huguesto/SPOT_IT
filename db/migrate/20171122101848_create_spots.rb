class CreateSpots < ActiveRecord::Migration[5.0]
  def change
    create_table :spots do |t|
      t.string :comment
      t.references :user, foreign_key: true
      t.references :place, foreign_key: true

      t.timestamps
    end
  end
end

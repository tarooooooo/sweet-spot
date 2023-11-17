class CreateBadmintonProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :badminton_profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :play_duration, default: 0, null: false
      t.integer :level, null: false
      t.integer :play_style, null: false
      t.integer :position, null: false

      t.timestamps
    end
  end
end

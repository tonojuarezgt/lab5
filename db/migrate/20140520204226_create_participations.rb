class CreateParticipations < ActiveRecord::Migration
  def change
    create_table :participations do |t|
      t.references :team, index: true
      t.references :group, index: true
      t.integer :points
      t.integer :matches
      t.integer :winner_match
      t.integer :looser_match
      t.integer :draw_match
      t.integer :a_goals
      t.integer :r_goals

      t.timestamps
    end
  end
end

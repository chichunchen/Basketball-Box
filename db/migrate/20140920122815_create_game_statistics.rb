class CreateGameStatistics < ActiveRecord::Migration
  def change
    create_table :game_statistics do |t|
      t.integer :two_pt, default: 0
      t.integer :three_pt, default: 0
      t.integer :off_rebound, default: 0
      t.integer :def_rebound, default: 0
      t.integer :assist, default: 0
      t.integer :block, default: 0
      t.integer :steal, default: 0
      t.integer :turnover, default: 0
      t.integer :foul, default: 0
      t.integer :free_throw, default: 0
      t.integer :points, default: 0
      t.integer :player_id
      t.integer :game_id

      t.timestamps
    end
  end
end

class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.string :rival
      t.integer :team_id

      t.timestamps
    end
  end
end

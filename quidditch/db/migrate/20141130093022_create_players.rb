class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.integer :total_lifetime_score, default: 0
      t.integer :team_id

      t.timestamps
    end
  end
end

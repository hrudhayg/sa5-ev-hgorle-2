class AddTeamFkColToPlayers < ActiveRecord::Migration[7.0]
  def change
    add_reference :players, :team, foreign_key: true
  end
end

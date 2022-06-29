class CreateTeamLeaders < ActiveRecord::Migration[7.0]
  def change
    create_table :team_leaders do |t|
      t.string :name
      t.references :team, null: false, foreign_key: true

      t.timestamps
    end
  end
end

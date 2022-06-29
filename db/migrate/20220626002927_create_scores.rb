class CreateScores < ActiveRecord::Migration[7.0]
  def change
    create_table :scores do |t|
      t.float :fx, null: false
      t.float :ph, null: false
      t.float :sr, null: false
      t.float :vt, null: false
      t.float :pb, null: false
      t.float :hb, null: false
      t.references :gymnast, null: false, foreign_key: true

      t.timestamps
    end
  end
end

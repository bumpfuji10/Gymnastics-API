class CreateGymnasts < ActiveRecord::Migration[7.0]
  def change
    create_table :gymnasts do |t|
      t.string :name, null: false
      t.integer :age, null: false
      t.references :team, null: false, foreign_key: true

      t.timestamps
    end
  end
end

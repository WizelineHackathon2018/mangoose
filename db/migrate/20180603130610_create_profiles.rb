class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.references :team, foreign_key: true
      t.string :name
      t.string :dictionary

      t.timestamps
    end
  end
end

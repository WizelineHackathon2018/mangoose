class AddRelationsToUser < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :team, foreign_key: true
    add_reference :users, :profile, foreign_key: true
    add_column :users, :slack_user_id, :string
    add_column :users, :name, :string
  end
end

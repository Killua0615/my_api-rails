class CreateCharacters < ActiveRecord::Migration[7.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :debut_episode
      t.references :affiliation, null: false, foreign_key: true

      t.timestamps
    end
  end
end

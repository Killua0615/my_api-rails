class CreateNenAbilityRelations < ActiveRecord::Migration[7.1]
  def change
    create_table :nen_ability_relations do |t|
      t.references :character, null: false, foreign_key: true
      t.references :nen_ability, null: false, foreign_key: true

      t.timestamps
    end
  end
end

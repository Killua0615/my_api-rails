class CreateNenAbilities < ActiveRecord::Migration[7.1]
  def change
    create_table :nen_abilities do |t|
      t.string :aura_type
      t.string :name

      t.timestamps
    end
  end
end

class CreateCabinetIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :cabinet_ingredients do |t|
      t.references :cabinet, foreign_key: true
      t.references :ingredient, foreign_key: true
      t.timestamps
    end
  end
end

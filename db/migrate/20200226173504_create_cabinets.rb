class CreateCabinets < ActiveRecord::Migration[6.0]
  def change
    create_table :cabinets do |t|
      t.string :user_id
      t.timestamps
    end
  end
end

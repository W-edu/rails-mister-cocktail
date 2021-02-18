class CreateDoses < ActiveRecord::Migration[6.0]
  def change
    create_table :doses do |t|
      t.string :description
      t.integer :cocktails_id
      t.integer :ingredients_id

      t.timestamps
    end
  end
end

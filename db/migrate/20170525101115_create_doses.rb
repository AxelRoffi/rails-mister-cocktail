class CreateDoses < ActiveRecord::Migration[5.1]
  def change
    create_table :doses do |t|
      t.string :description
      t.string :string
      t.references :cocktail, foreign_key: true
      t.references :dose, foreign_key: true

      t.timestamps
    end
  end
end

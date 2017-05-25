class AddIngredientsToDoses < ActiveRecord::Migration[5.1]
  def change
    add_reference :doses, :ingredient, foreign_key: true
    remove_column :doses, :dose_id
  end
end

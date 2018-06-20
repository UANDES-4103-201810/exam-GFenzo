class CreateRecipeingredients < ActiveRecord::Migration[5.1]
  def change
    create_table :recipeingredients do |t|
      t.references :recipe
      t.references :ingredient

      t.timestamps
    end
  end
end

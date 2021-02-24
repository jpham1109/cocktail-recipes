class CreateCocktailRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :cocktail_recipes do |t|
      t.string :name
      t.text :recipe
      t.string :creator

      t.timestamps
    end
  end
end

class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :recipe_ingredient, index: true, foreign_key: true
      t.integer :ingredient_id
      t.text :pic_url
      t.text :ingred_items
      t.text :directions
      t.boolean :cooked, default: false
      t.boolean :favorite

      t.timestamps
    end
  end
end

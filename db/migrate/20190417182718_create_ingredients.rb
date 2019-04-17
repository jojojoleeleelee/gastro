class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.belongs_to :user, index: true, foreign_key: true
      t.string :quantity
      t.string :purchase_date
      t.string :type
      t.string :expiration_date
      t.boolean :favorite
      t.text :story

      t.timestamps
    end
  end
end

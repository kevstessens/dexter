class CreatePokedexes < ActiveRecord::Migration
  def change
    create_table :pokedexes do |t|
      t.string :name
      t.integer :quantity

      t.timestamps
    end
  end
end

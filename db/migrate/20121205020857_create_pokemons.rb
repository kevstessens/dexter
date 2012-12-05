class CreatePokemons < ActiveRecord::Migration
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :type
      t.integer :number
      t.string :version
      t.boolean :captured
      t.references :pokedex
      t.references :admin_user

      t.timestamps
    end
    add_index :pokemons, :pokedex_id
    add_index :pokemons, :admin_user_id
  end
end

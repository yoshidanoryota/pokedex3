class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|

      t.references :user,          null: false, foreign_key: true
      t.string :title,        null: false

      t.string :first_pokemon,        null: false
      t.string :first_pokemon_special,        null: false
      t.string :first_pokemon_item
      t.string :first_pokemon_temper_id,        null: false
      t.string :first_pokemon_hp,        null: false
      t.string :first_pokemon_attack,        null: false
      t.string :first_pokemon_defence,        null: false
      t.string :first_pokemon_spattack,        null: false
      t.string :first_pokemon_spdefence,        null: false
      t.string :first_pokemon_speed,        null: false
      t.string :first_pokemon_first_weapon,        null: false
      t.string :first_pokemon_second_weapon,        null: false
      t.string :first_pokemon_third_weapon,        null: false
      t.string :first_pokemon_force_weapon,        null: false

      t.string :second_pokemon,        null: false
      t.string :second_pokemon_special,        null: false
      t.string :second_pokemon_item
      t.string :second_pokemon_temper_id,        null: false
      t.string :second_pokemon_hp,        null: false
      t.string :second_pokemon_attack,        null: false
      t.string :second_pokemon_defence,        null: false
      t.string :second_pokemon_spattack,        null: false
      t.string :second_pokemon_spdefence,        null: false
      t.string :second_pokemon_speed,        null: false
      t.string :second_pokemon_first_weapon,        null: false
      t.string :second_pokemon_second_weapon,        null: false
      t.string :second_pokemon_third_weapon,        null: false
      t.string :second_pokemon_force_weapon,        null: false
      
      t.string :third_pokemon,       null: false
      t.string :third_pokemon_special,        null: false
      t.string :third_pokemon_item
      t.string :third_pokemon_temper_id,        null: false
      t.string :third_pokemon_hp,        null: false
      t.string :third_pokemon_attack,        null: false
      t.string :third_pokemon_defence,        null: false
      t.string :third_pokemon_spattack,        null: false
      t.string :third_pokemon_spdefence,        null: false
      t.string :third_pokemon_speed,        null: false
      t.string :third_pokemon_first_weapon,        null: false
      t.string :third_pokemon_second_weapon,        null: false
      t.string :third_pokemon_third_weapon,        null: false
      t.string :third_pokemon_force_weapon,        null: false

      t.string :force_pokemon,        null: false
      t.string :force_pokemon_special,        null: false
      t.string :force_pokemon_item
      t.string :force_pokemon_temper_id,        null: false
      t.string :force_pokemon_hp,        null: false
      t.string :force_pokemon_attack,        null: false
      t.string :force_pokemon_defence,        null: false
      t.string :force_pokemon_spattack,        null: false
      t.string :force_pokemon_spdefence,        null: false
      t.string :force_pokemon_speed,        null: false
      t.string :force_pokemon_first_weapon,        null: false
      t.string :force_pokemon_second_weapon,        null: false
      t.string :force_pokemon_third_weapon,        null: false
      t.string :force_pokemon_force_weapon,        null: false

      t.string :fifth_pokemon,        null: false
      t.string :fifth_pokemon_special,        null: false
      t.string :fifth_pokemon_item
      t.string :fifth_pokemon_temper_id,        null: false
      t.string :fifth_pokemon_hp,        null: false
      t.string :fifth_pokemon_attack,        null: false
      t.string :fifth_pokemon_defence,        null: false
      t.string :fifth_pokemon_spattack,        null: false
      t.string :fifth_pokemon_spdefence,        null: false
      t.string :fifth_pokemon_speed,        null: false
      t.string :fifth_pokemon_first_weapon,        null: false
      t.string :fifth_pokemon_second_weapon,        null: false
      t.string :fifth_pokemon_third_weapon,        null: false
      t.string :fifth_pokemon_force_weapon,        null: false

      t.string :sixth_pokemon,        null: false
      t.string :sixth_pokemon_special,        null: false
      t.string :sixth_pokemon_item
      t.string :sixth_pokemon_temper_id,        null: false
      t.string :sixth_pokemon_hp,        null: false
      t.string :sixth_pokemon_attack,        null: false
      t.string :sixth_pokemon_defence,        null: false
      t.string :sixth_pokemon_spattack,        null: false
      t.string :sixth_pokemon_spdefence,        null: false
      t.string :sixth_pokemon_speed,        null: false
      t.string :sixth_pokemon_first_weapon,        null: false
      t.string :sixth_pokemon_second_weapon,        null: false
      t.string :sixth_pokemon_third_weapon,        null: false
      t.string :sixth_pokemon_force_weapon,        null: false

      t.text :article_text,        null: false


      t.timestamps


    end
  end
end

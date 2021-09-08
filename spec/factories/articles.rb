FactoryBot.define do
  factory :article do
    title { 'タイトル' }
    first_pokemon_hp { '123' }
    first_pokemon_attack { '123' }
    first_pokemon_defence { '123' }
    first_pokemon_spattack { '123' }
    first_pokemon_spdefence { '123' }
    first_pokemon_speed { '123' }

    second_pokemon_hp { '123' }
    second_pokemon_attack { '123' }
    second_pokemon_defence { '123' }
    second_pokemon_spattack { '123' }
    second_pokemon_spdefence { '123' }
    second_pokemon_speed { '123' }

    third_pokemon_hp { '123' }
    third_pokemon_attack { '123' }
    third_pokemon_defence { '123' }
    third_pokemon_spattack { '123' }
    third_pokemon_spdefence { '123' }
    third_pokemon_speed { '123' }

    force_pokemon_hp { '123' }
    force_pokemon_attack { '123' }
    force_pokemon_defence { '123' }
    force_pokemon_spattack { '123' }
    force_pokemon_spdefence { '123' }
    force_pokemon_speed { '123' }

    fifth_pokemon_hp { '123' }
    fifth_pokemon_attack { '123' }
    fifth_pokemon_defence { '123' }
    fifth_pokemon_spattack { '123' }
    fifth_pokemon_spdefence { '123' }
    fifth_pokemon_speed { '123' }

    sixth_pokemon_hp { '123' }
    sixth_pokemon_attack { '123' }
    sixth_pokemon_defence { '123' }
    sixth_pokemon_spattack { '123' }
    sixth_pokemon_spdefence { '123' }
    sixth_pokemon_speed { '123' }

    first_pokemon { 'ポケモン' }
    first_pokemon_special { '性格' }
    first_pokemon_item { '道具' }
    first_pokemon_temper_id { '特性' }
    first_pokemon_first_weapon { '技' }
    first_pokemon_second_weapon { '技' }
    first_pokemon_third_weapon { '技' }
    first_pokemon_force_weapon { '技' }

    second_pokemon { 'ポケモン' }
    second_pokemon_special { '性格' }
    second_pokemon_item { '道具' }
    second_pokemon_temper_id { '特性' }
    second_pokemon_first_weapon { '技' }
    second_pokemon_second_weapon { '技' }
    second_pokemon_third_weapon { '技' }
    second_pokemon_force_weapon { '技' }

    third_pokemon { 'ポケモン' }
    third_pokemon_special { '性格' }
    third_pokemon_item { '道具' }
    third_pokemon_temper_id { '特性' }
    third_pokemon_first_weapon { '技' }
    third_pokemon_second_weapon { '技' }
    third_pokemon_third_weapon { '技' }
    third_pokemon_force_weapon { '技' }

    force_pokemon { 'ポケモン' }
    force_pokemon_special { '性格' }
    force_pokemon_item { '道具' }
    force_pokemon_temper_id { '特性' }
    force_pokemon_first_weapon { '技' }
    force_pokemon_second_weapon { '技' }
    force_pokemon_third_weapon { '技' }
    force_pokemon_force_weapon { '技' }

    fifth_pokemon { 'ポケモン' }
    fifth_pokemon_special { '性格' }
    fifth_pokemon_item { '道具' }
    fifth_pokemon_temper_id { '特性' }
    fifth_pokemon_first_weapon { '技' }
    fifth_pokemon_second_weapon { '技' }
    fifth_pokemon_third_weapon { '技' }
    fifth_pokemon_force_weapon { '技' }

    sixth_pokemon { 'ポケモン' }
    sixth_pokemon_special { '性格' }
    sixth_pokemon_item { '道具' }
    sixth_pokemon_temper_id { '特性' }
    sixth_pokemon_first_weapon { '技' }
    sixth_pokemon_second_weapon { '技' }
    sixth_pokemon_third_weapon { '技' }
    sixth_pokemon_force_weapon { '技' }

    article_text { 'テキスト' }

    association :user
  end
end

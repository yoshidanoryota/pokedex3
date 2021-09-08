# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_09_06_030924) do

  create_table "articles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "title", null: false
    t.string "first_pokemon", null: false
    t.string "first_pokemon_special", null: false
    t.string "first_pokemon_item"
    t.string "first_pokemon_temper_id", null: false
    t.string "first_pokemon_hp", null: false
    t.string "first_pokemon_attack", null: false
    t.string "first_pokemon_defence", null: false
    t.string "first_pokemon_spattack", null: false
    t.string "first_pokemon_spdefence", null: false
    t.string "first_pokemon_speed", null: false
    t.string "first_pokemon_first_weapon", null: false
    t.string "first_pokemon_second_weapon", null: false
    t.string "first_pokemon_third_weapon", null: false
    t.string "first_pokemon_force_weapon", null: false
    t.string "second_pokemon", null: false
    t.string "second_pokemon_special", null: false
    t.string "second_pokemon_item"
    t.string "second_pokemon_temper_id", null: false
    t.string "second_pokemon_hp", null: false
    t.string "second_pokemon_attack", null: false
    t.string "second_pokemon_defence", null: false
    t.string "second_pokemon_spattack", null: false
    t.string "second_pokemon_spdefence", null: false
    t.string "second_pokemon_speed", null: false
    t.string "second_pokemon_first_weapon", null: false
    t.string "second_pokemon_second_weapon", null: false
    t.string "second_pokemon_third_weapon", null: false
    t.string "second_pokemon_force_weapon", null: false
    t.string "third_pokemon", null: false
    t.string "third_pokemon_special", null: false
    t.string "third_pokemon_item"
    t.string "third_pokemon_temper_id", null: false
    t.string "third_pokemon_hp", null: false
    t.string "third_pokemon_attack", null: false
    t.string "third_pokemon_defence", null: false
    t.string "third_pokemon_spattack", null: false
    t.string "third_pokemon_spdefence", null: false
    t.string "third_pokemon_speed", null: false
    t.string "third_pokemon_first_weapon", null: false
    t.string "third_pokemon_second_weapon", null: false
    t.string "third_pokemon_third_weapon", null: false
    t.string "third_pokemon_force_weapon", null: false
    t.string "force_pokemon", null: false
    t.string "force_pokemon_special", null: false
    t.string "force_pokemon_item"
    t.string "force_pokemon_temper_id", null: false
    t.string "force_pokemon_hp", null: false
    t.string "force_pokemon_attack", null: false
    t.string "force_pokemon_defence", null: false
    t.string "force_pokemon_spattack", null: false
    t.string "force_pokemon_spdefence", null: false
    t.string "force_pokemon_speed", null: false
    t.string "force_pokemon_first_weapon", null: false
    t.string "force_pokemon_second_weapon", null: false
    t.string "force_pokemon_third_weapon", null: false
    t.string "force_pokemon_force_weapon", null: false
    t.string "fifth_pokemon", null: false
    t.string "fifth_pokemon_special", null: false
    t.string "fifth_pokemon_item"
    t.string "fifth_pokemon_temper_id", null: false
    t.string "fifth_pokemon_hp", null: false
    t.string "fifth_pokemon_attack", null: false
    t.string "fifth_pokemon_defence", null: false
    t.string "fifth_pokemon_spattack", null: false
    t.string "fifth_pokemon_spdefence", null: false
    t.string "fifth_pokemon_speed", null: false
    t.string "fifth_pokemon_first_weapon", null: false
    t.string "fifth_pokemon_second_weapon", null: false
    t.string "fifth_pokemon_third_weapon", null: false
    t.string "fifth_pokemon_force_weapon", null: false
    t.string "sixth_pokemon", null: false
    t.string "sixth_pokemon_special", null: false
    t.string "sixth_pokemon_item"
    t.string "sixth_pokemon_temper_id", null: false
    t.string "sixth_pokemon_hp", null: false
    t.string "sixth_pokemon_attack", null: false
    t.string "sixth_pokemon_defence", null: false
    t.string "sixth_pokemon_spattack", null: false
    t.string "sixth_pokemon_spdefence", null: false
    t.string "sixth_pokemon_speed", null: false
    t.string "sixth_pokemon_first_weapon", null: false
    t.string "sixth_pokemon_second_weapon", null: false
    t.string "sixth_pokemon_third_weapon", null: false
    t.string "sixth_pokemon_force_weapon", null: false
    t.text "article_text", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "impressions_count", default: 0
    t.index ["user_id"], name: "index_articles_on_user_id"
  end

  create_table "comments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "article_id", null: false
    t.string "comment_text", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["article_id"], name: "index_comments_on_article_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "contacts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "last_name", null: false
    t.string "first_name", null: false
    t.string "email", null: false
    t.string "about", null: false
    t.string "case", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "impressions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "impressionable_type"
    t.integer "impressionable_id"
    t.integer "user_id"
    t.string "controller_name"
    t.string "action_name"
    t.string "view_name"
    t.string "request_hash"
    t.string "ip_address"
    t.string "session_hash"
    t.text "message"
    t.text "referrer"
    t.text "params"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["controller_name", "action_name", "ip_address"], name: "controlleraction_ip_index"
    t.index ["controller_name", "action_name", "request_hash"], name: "controlleraction_request_index"
    t.index ["controller_name", "action_name", "session_hash"], name: "controlleraction_session_index"
    t.index ["impressionable_type", "impressionable_id", "ip_address"], name: "poly_ip_index"
    t.index ["impressionable_type", "impressionable_id", "params"], name: "poly_params_request_index", length: { params: 255 }
    t.index ["impressionable_type", "impressionable_id", "request_hash"], name: "poly_request_index"
    t.index ["impressionable_type", "impressionable_id", "session_hash"], name: "poly_session_index"
    t.index ["impressionable_type", "message", "impressionable_id"], name: "impressionable_type_message_index", length: { message: 255 }
    t.index ["user_id"], name: "index_impressions_on_user_id"
  end

  create_table "infomations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "text", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_infomations_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "articles", "users"
  add_foreign_key "comments", "articles"
  add_foreign_key "comments", "users"
  add_foreign_key "infomations", "users"
end

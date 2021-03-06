# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150109041856) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "area_comums", force: true do |t|
    t.string "nome", limit: 50
  end

  create_table "area_comums_imovels", force: true do |t|
    t.integer "area_comum_id"
    t.integer "imovel_id"
  end

  create_table "estados", force: true do |t|
    t.string "nome",  limit: 50, null: false
    t.string "sigla", limit: 2,  null: false
  end

  create_table "imovels", force: true do |t|
    t.string  "cidade",           limit: 50
    t.string  "endereco",         limit: 100, null: false
    t.text    "descricao"
    t.integer "qtd_quartos"
    t.integer "metragem"
    t.integer "vagas_auto"
    t.decimal "valor_venda"
    t.decimal "valor_aluguel"
    t.decimal "valor_condominio"
    t.integer "tipo_imovel_id"
    t.integer "estado_id",                    null: false
    t.json    "fotos"
    t.integer "created_by"
    t.integer "qtd_suites"
    t.integer "ano_construcao"
    t.string  "bairro",           limit: 50
  end

  create_table "tipo_imovels", force: true do |t|
    t.string "nome", limit: 50, null: false
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "area_comums_imovels", "area_comums", name: "area_comums_imovels_area_comum_id_fk"
  add_foreign_key "area_comums_imovels", "imovels", name: "area_comums_imovels_imovel_id_fk"

  add_foreign_key "imovels", "estados", name: "imovels_estado_id_fk"
  add_foreign_key "imovels", "tipo_imovels", name: "imovels_tipo_imovel_id_fk"
  add_foreign_key "imovels", "users", name: "imovels_created_by_fk", column: "created_by"

end

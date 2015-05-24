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

ActiveRecord::Schema.define(version: 20150524213803) do

  create_table "enderecos", force: :cascade do |t|
    t.string   "tipo",        limit: 255
    t.string   "endereco",    limit: 255
    t.string   "cidade",      limit: 255
    t.string   "bairro",      limit: 255
    t.string   "estado",      limit: 255
    t.integer  "numero",      limit: 4
    t.string   "cep",         limit: 255
    t.string   "telefone",    limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "familium_id", limit: 4
  end

  add_index "enderecos", ["familium_id"], name: "index_enderecos_on_familium_id", using: :btree

  create_table "familia", force: :cascade do |t|
    t.string   "nome",          limit: 255
    t.string   "tipo",          limit: 255
    t.text     "inforcacoes",   limit: 65535
    t.decimal  "renda",                       precision: 10
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.string   "enquadramento", limit: 255
  end

  create_table "pessoas", force: :cascade do |t|
    t.string   "nome",            limit: 255
    t.string   "tipo",            limit: 255
    t.string   "sexo",            limit: 255
    t.date     "data_nascimento"
    t.string   "telefone",        limit: 255
    t.string   "papel",           limit: 255
    t.string   "nacionalidade",   limit: 255
    t.string   "raca",            limit: 255
    t.string   "estado_civil",    limit: 255
    t.string   "ocupacao",        limit: 255
    t.decimal  "salario",                       precision: 10
    t.text     "informacoes",     limit: 65535
    t.boolean  "responsavel",     limit: 1
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.integer  "familium_id",     limit: 4
  end

  add_index "pessoas", ["familium_id"], name: "index_pessoas_on_familium_id", using: :btree

  add_foreign_key "enderecos", "familia"
  add_foreign_key "pessoas", "familia"
end

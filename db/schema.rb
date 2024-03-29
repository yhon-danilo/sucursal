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

ActiveRecord::Schema.define(version: 20150729063507) do

  create_table "facturas", force: :cascade do |t|
    t.string   "observacion",    limit: 255
    t.integer  "valor_articulo", limit: 4
    t.integer  "sucursal_id",    limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "facturas", ["sucursal_id"], name: "index_facturas_on_sucursal_id", using: :btree

  create_table "sucursales", force: :cascade do |t|
    t.string   "nombre_sucursal",  limit: 255
    t.decimal  "total_ventas_dia",             precision: 10
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
  end

  add_foreign_key "facturas", "sucursales"
end

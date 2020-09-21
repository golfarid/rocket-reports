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

ActiveRecord::Schema.define(version: 2020_09_21_143823) do

  create_table "connections", force: :cascade do |t|
    t.string "type"
    t.string "str"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "datasets", force: :cascade do |t|
    t.string "sql"
    t.integer "parameter_id", null: false
    t.integer "connection_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["connection_id"], name: "index_datasets_on_connection_id"
    t.index ["parameter_id"], name: "index_datasets_on_parameter_id"
  end

  create_table "group_reports", force: :cascade do |t|
    t.integer "role_id", null: false
    t.integer "report_id", null: false
    t.integer "parameter_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["parameter_id"], name: "index_group_reports_on_parameter_id"
    t.index ["report_id"], name: "index_group_reports_on_report_id"
    t.index ["role_id"], name: "index_group_reports_on_role_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "parameters", force: :cascade do |t|
    t.string "name"
    t.string "label"
    t.string "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reports", force: :cascade do |t|
    t.string "name"
    t.integer "dataset_id", null: false
    t.integer "template_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["dataset_id"], name: "index_reports_on_dataset_id"
    t.index ["template_id"], name: "index_reports_on_template_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "templates", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "role_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["role_id"], name: "index_users_on_role_id"
  end

  add_foreign_key "datasets", "connections"
  add_foreign_key "datasets", "parameters"
  add_foreign_key "group_reports", "parameters"
  add_foreign_key "group_reports", "reports"
  add_foreign_key "group_reports", "roles"
  add_foreign_key "reports", "datasets"
  add_foreign_key "reports", "templates"
  add_foreign_key "users", "roles"
end

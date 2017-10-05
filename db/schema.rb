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

ActiveRecord::Schema.define(version: 20171004221752) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.string "english_name"
    t.string "abbreviation"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "document_types", force: :cascade do |t|
    t.string "name"
    t.string "english_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genders", force: :cascade do |t|
    t.string "name"
    t.string "english_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matrix_types", force: :cascade do |t|
    t.string "name"
    t.string "english_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "param_categories", force: :cascade do |t|
    t.bigint "param_matrix_id"
    t.string "name"
    t.string "english_name"
    t.float "weighting"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["param_matrix_id"], name: "index_param_categories_on_param_matrix_id"
  end

  create_table "param_matrices", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.string "description"
    t.bigint "matrix_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["matrix_type_id"], name: "index_param_matrices_on_matrix_type_id"
  end

  create_table "param_sub_values", force: :cascade do |t|
    t.bigint "param_value_id"
    t.string "name"
    t.string "english_name"
    t.float "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["param_value_id"], name: "index_param_sub_values_on_param_value_id"
  end

  create_table "param_tables", force: :cascade do |t|
    t.bigint "table_type_id"
    t.string "name"
    t.string "english_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["table_type_id"], name: "index_param_tables_on_table_type_id"
  end

  create_table "param_values", force: :cascade do |t|
    t.bigint "param_table_id"
    t.string "name"
    t.string "english_name"
    t.float "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["param_table_id"], name: "index_param_values_on_param_table_id"
  end

  create_table "params", force: :cascade do |t|
    t.bigint "param_category_id"
    t.bigint "param_table_id"
    t.string "name"
    t.string "english_name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "weighting"
    t.index ["param_category_id"], name: "index_params_on_param_category_id"
    t.index ["param_table_id"], name: "index_params_on_param_table_id"
  end

  create_table "participant_documents", force: :cascade do |t|
    t.bigint "participant_id"
    t.bigint "document_type_id"
    t.string "document_code"
    t.date "expedition_date"
    t.date "expiration_date"
    t.bigint "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_participant_documents_on_country_id"
    t.index ["document_type_id"], name: "index_participant_documents_on_document_type_id"
    t.index ["participant_id"], name: "index_participant_documents_on_participant_id"
  end

  create_table "participant_params", force: :cascade do |t|
    t.bigint "participant_id"
    t.bigint "param_matrix_id"
    t.bigint "param_category_id"
    t.bigint "param_id"
    t.bigint "param_value_id"
    t.bigint "param_sub_value_id"
    t.float "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["param_category_id"], name: "index_participant_params_on_param_category_id"
    t.index ["param_id"], name: "index_participant_params_on_param_id"
    t.index ["param_matrix_id"], name: "index_participant_params_on_param_matrix_id"
    t.index ["param_sub_value_id"], name: "index_participant_params_on_param_sub_value_id"
    t.index ["param_value_id"], name: "index_participant_params_on_param_value_id"
    t.index ["participant_id"], name: "index_participant_params_on_participant_id"
  end

  create_table "participant_relationships", force: :cascade do |t|
    t.bigint "participant_id"
    t.bigint "related_participant_id"
    t.bigint "relationship_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["participant_id"], name: "index_participant_relationships_on_participant_id"
    t.index ["related_participant_id"], name: "index_participant_relationships_on_related_participant_id"
    t.index ["relationship_type_id"], name: "index_participant_relationships_on_relationship_type_id"
  end

  create_table "participant_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "english_name"
  end

  create_table "participants", force: :cascade do |t|
    t.string "code"
    t.string "first_name"
    t.string "second_name"
    t.string "third_name"
    t.string "fourth_name"
    t.bigint "gender_id"
    t.date "birthdate"
    t.string "email"
    t.bigint "participant_type_id"
    t.text "address"
    t.string "website"
    t.string "legal_representative"
    t.string "phone"
    t.string "mobile_phone"
    t.bigint "param_matrix_id"
    t.float "score"
    t.bigint "created_by_id"
    t.boolean "is_pep"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "countries_id", default: [], array: true
    t.index ["countries_id"], name: "index_participants_on_countries_id"
    t.index ["created_by_id"], name: "index_participants_on_created_by_id"
    t.index ["gender_id"], name: "index_participants_on_gender_id"
    t.index ["param_matrix_id"], name: "index_participants_on_param_matrix_id"
    t.index ["participant_type_id"], name: "index_participants_on_participant_type_id"
  end

  create_table "relationship_types", force: :cascade do |t|
    t.string "name"
    t.string "english_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "table_types", force: :cascade do |t|
    t.string "name"
    t.string "english_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "task_statuses", force: :cascade do |t|
    t.string "name"
    t.string "english_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.date "begin_date"
    t.date "expiration_date"
    t.date "complete_date"
    t.bigint "task_status_id"
    t.bigint "participant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["participant_id"], name: "index_tasks_on_participant_id"
    t.index ["task_status_id"], name: "index_tasks_on_task_status_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "password"
    t.string "email"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["user_name"], name: "index_users_on_user_name"
  end

  add_foreign_key "param_categories", "param_matrices"
  add_foreign_key "param_matrices", "matrix_types"
  add_foreign_key "param_sub_values", "param_values"
  add_foreign_key "param_tables", "table_types"
  add_foreign_key "param_values", "param_tables"
  add_foreign_key "params", "param_categories"
  add_foreign_key "params", "param_tables"
  add_foreign_key "participant_documents", "countries"
  add_foreign_key "participant_documents", "document_types"
  add_foreign_key "participant_documents", "participants"
  add_foreign_key "participant_params", "param_categories"
  add_foreign_key "participant_params", "param_matrices"
  add_foreign_key "participant_params", "param_sub_values"
  add_foreign_key "participant_params", "param_values"
  add_foreign_key "participant_params", "params"
  add_foreign_key "participant_params", "participants"
  add_foreign_key "participant_relationships", "participants"
  add_foreign_key "participant_relationships", "relationship_types"
  add_foreign_key "participants", "genders"
  add_foreign_key "participants", "param_matrices"
  add_foreign_key "participants", "participant_types"
  add_foreign_key "tasks", "participants"
  add_foreign_key "tasks", "task_statuses"
end

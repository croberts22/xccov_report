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

ActiveRecord::Schema.define(version: 2020_04_25_193320) do

  create_table "coverage_files", force: :cascade do |t|
    t.integer "covered_lines"
    t.float "line_coverage"
    t.string "path"
    t.string "name"
    t.integer "executable_lines"
    t.integer "coverage_target_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["coverage_target_id"], name: "index_coverage_files_on_coverage_target_id"
  end

  create_table "coverage_reports", force: :cascade do |t|
    t.integer "covered_lines"
    t.float "line_coverage"
    t.integer "executable_lines"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "coverage_targets", force: :cascade do |t|
    t.integer "covered_lines"
    t.float "line_coverage"
    t.string "name"
    t.integer "executable_lines"
    t.string "build_product_path"
    t.integer "coverage_report_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["coverage_report_id"], name: "index_coverage_targets_on_coverage_report_id"
  end

  create_table "functions", force: :cascade do |t|
    t.string "name"
    t.integer "covered_lines"
    t.float "line_coverage"
    t.integer "line_number"
    t.integer "execution_count"
    t.integer "executable_lines"
    t.integer "coverage_file_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["coverage_file_id"], name: "index_functions_on_coverage_file_id"
  end

  add_foreign_key "coverage_files", "coverage_targets"
  add_foreign_key "coverage_targets", "coverage_reports"
  add_foreign_key "functions", "coverage_files"
end

ActiveRecord::Schema[8.1].define(version: 2019_12_03_162606) do
  create_table "cars", force: :cascade do |t|
    t.string "make"
    t.string "model"
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end

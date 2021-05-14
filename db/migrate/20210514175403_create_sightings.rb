class CreateSightings < ActiveRecord::Migration[5.2]
  def change
    create_table "sightings", force: :cascade do |t|
      t.integer "bird_id"
      t.integer "location_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["bird_id"], name: "index_sightings_on_bird_id"
      t.index ["location_id"], name: "index_sightings_on_location_id"
    end
  end
end

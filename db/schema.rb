# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_06_24_094017) do
  create_table "ckeditor_assets", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "data_file_name", null: false
    t.string "data_content_type"
    t.integer "data_file_size"
    t.string "data_fingerprint"
    t.string "type", limit: 30
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["type"], name: "index_ckeditor_assets_on_type"
  end

  create_table "feedbacks", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "mobile"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "governments", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "name"
    t.integer "public_authorities_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_governments_on_name", unique: true
  end

  create_table "impressions", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["controller_name", "action_name", "ip_address"], name: "controlleraction_ip_index"
    t.index ["controller_name", "action_name", "request_hash"], name: "controlleraction_request_index"
    t.index ["controller_name", "action_name", "session_hash"], name: "controlleraction_session_index"
    t.index ["impressionable_type", "impressionable_id", "ip_address"], name: "poly_ip_index"
    t.index ["impressionable_type", "impressionable_id", "request_hash"], name: "poly_request_index"
    t.index ["impressionable_type", "impressionable_id", "session_hash"], name: "poly_session_index"
    t.index ["impressionable_type", "message", "impressionable_id"], name: "impressionable_type_message_index", length: { message: 255 }
    t.index ["user_id"], name: "index_impressions_on_user_id"
  end

  create_table "public_authorities", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "government_id"
    t.string "name"
    t.integer "rti_requests_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["government_id"], name: "index_public_authorities_on_government_id"
    t.index ["name"], name: "index_public_authorities_on_name", unique: true
  end

  create_table "rti_requests", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "public_authority_id"
    t.string "url_token"
    t.string "title"
    t.text "content"
    t.date "filed_date"
    t.string "source_url"
    t.boolean "publishp"
    t.datetime "publish_datetime"
    t.boolean "fb_publishedp"
    t.boolean "twitter_publishedp"
    t.boolean "gplus_publishedp"
    t.integer "impressions_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["impressions_count"], name: "index_rti_requests_on_impressions_count"
    t.index ["public_authority_id"], name: "index_rti_requests_on_public_authority_id"
    t.index ["title"], name: "index_rti_requests_on_title", unique: true
    t.index ["updated_at"], name: "index_rti_requests_on_updated_at"
    t.index ["url_token"], name: "index_rti_requests_on_url_token", unique: true
  end

  create_table "taggings", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "tag_id"
    t.integer "rti_request_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["rti_request_id", "tag_id"], name: "index_taggings_on_rti_request_id_and_tag_id", unique: true
    t.index ["tag_id"], name: "index_taggings_on_tag_id"
  end

  create_table "tags", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "name"
    t.integer "rti_requests_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_tags_on_name", unique: true
  end

end

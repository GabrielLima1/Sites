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

ActiveRecord::Schema.define(version: 20180402185923) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accessps", force: :cascade do |t|
    t.string "accessp_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "app_products", force: :cascade do |t|
    t.string "aproduct_status"
    t.bigint "product_id"
    t.bigint "app_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["app_id"], name: "index_app_products_on_app_id"
    t.index ["product_id"], name: "index_app_products_on_product_id"
  end

  create_table "apps", force: :cascade do |t|
    t.string "app_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "be_clients", force: :cascade do |t|
    t.string "client_company_name"
    t.string "client_cnpj"
    t.string "client_contact_name"
    t.string "client_mail"
    t.string "client_state"
    t.string "client_city"
    t.string "client_tphone"
    t.string "client_cphone"
    t.string "client_came_to_us"
    t.bigint "shipping_email_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shipping_email_id"], name: "index_be_clients_on_shipping_email_id"
  end

  create_table "candidate_works", force: :cascade do |t|
    t.string "cwork_fname"
    t.string "cwork_lname"
    t.string "cwork_cep"
    t.string "cwork_state"
    t.string "cwork_city"
    t.string "cwork_burgh"
    t.string "cwork_street"
    t.string "cwork_num"
    t.string "cwork_complement"
    t.string "cwork_gender"
    t.string "cwork_mail"
    t.string "cwork_tphone"
    t.string "cwork_cphone"
    t.bigint "work_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["work_id"], name: "index_candidate_works_on_work_id"
  end

  create_table "cat_ctrl_qualits", force: :cascade do |t|
    t.string "ccquality_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "compans", force: :cascade do |t|
    t.string "company_name"
    t.text "company_description"
    t.bigint "midia_id"
    t.bigint "fac_contact_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fac_contact_id"], name: "index_compans_on_fac_contact_id"
    t.index ["midia_id"], name: "index_compans_on_midia_id"
  end

  create_table "contact_us", force: :cascade do |t|
    t.string "contact_fname"
    t.string "contact_lname"
    t.string "contact_mail"
    t.string "contact_tphone"
    t.string "contact_cphone"
    t.string "contact_city"
    t.string "contact_state"
    t.text "contact_message"
    t.bigint "shipping_email_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shipping_email_id"], name: "index_contact_us_on_shipping_email_id"
  end

  create_table "cores", force: :cascade do |t|
    t.string "core_title"
    t.text "core_description"
    t.bigint "midia_id"
    t.bigint "menu_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["menu_id"], name: "index_cores_on_menu_id"
    t.index ["midia_id"], name: "index_cores_on_midia_id"
    t.index ["user_id"], name: "index_cores_on_user_id"
  end

  create_table "ctrl_qualits", force: :cascade do |t|
    t.float "cquality_value"
    t.string "cquality_date"
    t.bigint "sub_cat_ctrl_qualit_id"
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_ctrl_qualits_on_product_id"
    t.index ["sub_cat_ctrl_qualit_id"], name: "index_ctrl_qualits_on_sub_cat_ctrl_qualit_id"
  end

  create_table "end_factors", force: :cascade do |t|
    t.string "efactory_country"
    t.string "efactory_state"
    t.string "efactory_city"
    t.string "efactory_burgh"
    t.string "efactory_street"
    t.string "efactory_zipcode"
    t.string "efactory_longitude"
    t.string "efactory_latitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fac_contacts", force: :cascade do |t|
    t.string "fcontact_name"
    t.string "fcontact_mail"
    t.string "fcontact_tel"
    t.string "fcontact_cel"
    t.string "fcontact_hours"
    t.boolean "fcontact_status"
    t.bigint "midia_id"
    t.bigint "end_factor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["end_factor_id"], name: "index_fac_contacts_on_end_factor_id"
    t.index ["midia_id"], name: "index_fac_contacts_on_midia_id"
  end

  create_table "menus", force: :cascade do |t|
    t.string "menu_name"
    t.boolean "menu_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "midia", force: :cascade do |t|
    t.string "midia_name"
    t.string "midia_date"
    t.string "midia_url"
    t.bigint "type_midia_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["type_midia_id"], name: "index_midia_on_type_midia_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "product_name"
    t.text "product_description"
    t.boolean "product_status"
    t.bigint "midia_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["midia_id"], name: "index_products_on_midia_id"
  end

  create_table "shipping_emails", force: :cascade do |t|
    t.integer "semail_port"
    t.string "semail_host"
    t.boolean "semail_ishtml"
    t.string "semail_mailer"
    t.string "semail_smtp_secure"
    t.string "semail_user"
    t.string "semail_pass"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_shipping_emails_on_user_id"
  end

  create_table "socials", force: :cascade do |t|
    t.string "social_name"
    t.string "social_link"
    t.boolean "social_status"
    t.bigint "midia_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["midia_id"], name: "index_socials_on_midia_id"
  end

  create_table "sub_cat_ctrl_qualits", force: :cascade do |t|
    t.string "sccquality_name"
    t.bigint "cat_ctrl_qualit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cat_ctrl_qualit_id"], name: "index_sub_cat_ctrl_qualits_on_cat_ctrl_qualit_id"
  end

  create_table "sub_menus", force: :cascade do |t|
    t.string "smenu_name"
    t.boolean "smenu_status"
    t.bigint "menu_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["menu_id"], name: "index_sub_menus_on_menu_id"
  end

  create_table "type_midia", force: :cascade do |t|
    t.string "tmidia_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "user_fname"
    t.string "user_lname"
    t.string "user_departament"
    t.bigint "compan_id"
    t.bigint "accessp_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.index ["accessp_id"], name: "index_users_on_accessp_id"
    t.index ["compan_id"], name: "index_users_on_compan_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "works", force: :cascade do |t|
    t.string "work_title"
    t.text "work_description"
    t.bigint "end_factor_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["end_factor_id"], name: "index_works_on_end_factor_id"
    t.index ["user_id"], name: "index_works_on_user_id"
  end

  add_foreign_key "app_products", "apps"
  add_foreign_key "app_products", "products"
  add_foreign_key "be_clients", "shipping_emails"
  add_foreign_key "candidate_works", "works"
  add_foreign_key "compans", "fac_contacts"
  add_foreign_key "compans", "midia", column: "midia_id"
  add_foreign_key "contact_us", "shipping_emails"
  add_foreign_key "cores", "menus"
  add_foreign_key "cores", "midia", column: "midia_id"
  add_foreign_key "cores", "users"
  add_foreign_key "ctrl_qualits", "products"
  add_foreign_key "ctrl_qualits", "sub_cat_ctrl_qualits"
  add_foreign_key "fac_contacts", "end_factors"
  add_foreign_key "fac_contacts", "midia", column: "midia_id"
  add_foreign_key "midia", "type_midia", column: "type_midia_id"
  add_foreign_key "products", "midia", column: "midia_id"
  add_foreign_key "shipping_emails", "users"
  add_foreign_key "socials", "midia", column: "midia_id"
  add_foreign_key "sub_cat_ctrl_qualits", "cat_ctrl_qualits"
  add_foreign_key "sub_menus", "menus"
  add_foreign_key "users", "accessps"
  add_foreign_key "users", "compans"
  add_foreign_key "works", "end_factors"
  add_foreign_key "works", "users"
end

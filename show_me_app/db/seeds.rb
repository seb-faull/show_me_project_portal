# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# u1 = User.create!(email: "sks@hotmail.com", password: "123456", name: "Bob", year: "2017", role: "Trainee Spartan")

# Project.create!(title: "Project 1", description: "This game was built using HTML, CSS and JavaScript. Additional libraries include jQuery and the jQuery Easing Plugin. Through DOM manipulation, the entire project runs from within the index.HTML.",
# 	live: false, user_id: u1.id)

u1 = User.create!(email: "sks@outlook.com", password: "123456", name: "Bob", year: "2017", role: "Spartan")
u2 = User.create!(email: "ea@hotmail.com", password: "123456", name: "John", year: "2015", role: "Trainer")

admin = User.create!(email: "admin@hotmail.com", password: "123456", name: "admin", year: "2017", role: "Admin")

Project.create!(title: "Project 1", description: "Game built with HTML/CSS, JavaScript and jQuery", live: false, user_id: u1.id)
Project.create!(title: "Project 2", description: "Web Application built with Ruby on Rails ", live: false, user_id: u2.id)

puts "Finished seeding..."

  # create_table "projects", force: :cascade do |t|
  #   t.string "title"
  #   t.text "description"
  #   t.boolean "live"
  #   t.string "image_file_name"
  #   t.string "image_content_type"
  #   t.integer "image_file_size"
  #   t.datetime "image_updated_at"
  #   t.integer "user_id"
  #   t.datetime "created_at", null: false
  #   t.datetime "updated_at", null: false


  # create_table "users", force: :cascade do |t|
  #   t.string "email", default: "", null: false
  #   t.string "encrypted_password", default: "", null: false
  #   t.string "reset_password_token"
  #   t.datetime "reset_password_sent_at"
  #   t.datetime "remember_created_at"
  #   t.integer "sign_in_count", default: 0, null: false
  #   t.datetime "current_sign_in_at"
  #   t.datetime "last_sign_in_at"
  #   t.inet "current_sign_in_ip"
  #   t.inet "last_sign_in_ip"
  #   t.datetime "created_at", null: false
  #   t.datetime "updated_at", null: false
  #   t.string "name"
  #   t.integer "year"
  #   t.string "role"
  #   t.index ["email"], name: "index_users_on_email", unique: true
  #   t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

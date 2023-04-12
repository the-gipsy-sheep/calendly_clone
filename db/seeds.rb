# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all
ApointmentType.destroy_all

user = User.create!(
  apointment_link: "cfulanito",
  email: "cosme.fulanito@example.com",
  name: "Cosme Fulanito",
  password: "123456",
  password_confirmation: "123456"
)

apointment_type1 = ApointmentType.create!(
  color: "#38bdf8",
  description: "15 min Test 123",
  duration: 15,
  location: "Zoom",
  name: "15min",
  payment_required: false,
  price: nil,
  user: user
)

apointment_type2 = ApointmentType.create!(
  color: "#fbbf24",
  description: "30 min Test 123",
  duration: 30,
  location: "Zoom",
  name: "30min",
  payment_required: false,
  price: nil,
  user: user
)

apointment_type3 = ApointmentType.create!(
  color: "#34d399",
  description: "1 hour Test 123",
  duration: 60,
  location: "Zoom",
  name: "60min",
  payment_required: true,
  price: 125,
  user: user
)

puts "Reset complete 👨‍💻🎉🔥"

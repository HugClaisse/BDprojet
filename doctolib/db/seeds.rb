# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
1O.times do
    doctor = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Address.zip_code )
end

10.times do
  patient = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
end
10.times do
  city = City.create!(city: Faker::Address.city, doctor_id: rand(1..25), patient_id: rand(1..50), appointment_id:rand(1..25) )
end

10.times do
   appointment = Appointment.create!(doctor_id: rand(1..25), patient_id: rand(1..50), date: Faker::Date.in_date_period)

end
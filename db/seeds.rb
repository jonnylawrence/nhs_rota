# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Doctor.destroy_all
Location.destroy_all
Rotum.destroy_all
Micropost.destroy_all


Doctor.create!([
{
  id: 1,
  name: "Locum",
  email: "Locum@yahoo.co.uk",
  consultant: true,
  mobile: "000000000",
  contact_preference: "Email",
  notification_group: "None",
  admin: false,
  monday_days: false,
  monday_nights: false,
  tuesday_days: false,
  tuesday_nights: false,
  wednesday_days: false,
  wednesday_nights: false,
  thursday_days: false,
  thursday_nights: false,
  friday_days: false,
  friday_nights: false,
  saturday_days: true,
  saturday_nights: true,
  sunday_days: true,
  sunday_nights: true,
  password: "locum123",
  password_confirmation: "locum123"
},
  {
    id: 2,
    name: "Jon S",
    email: "jonnylawrence@yahoo.co.uk",
    consultant: true,
    mobile: "0743999999",
    contact_preference: "SMS",
    notification_group: "None",
      admin: true,
      monday_days: false,
      monday_nights: false,
      tuesday_days: true,
      tuesday_nights: true,
      wednesday_days: true,
      wednesday_nights: true,
      thursday_days: false,
      thursday_nights: false,
      friday_days: false,
      friday_nights: false,
      saturday_days: false,
      saturday_nights: false,
      sunday_days: false,
      sunday_nights: false,
    password: "jon123",
    password_confirmation: "jon123"
}])

(3..20).each do |z|
if z%3 == 0
  consult = true
else
  consult = false
end
Doctor.create!([
{
  id: z,
  name: Faker::Name.first_name + " " + Faker::Name.last_name,
  email: "#{Faker::Internet.user_name}#{z}@#{Faker::Internet.domain_name}",
  consultant: consult,
  mobile: "074" + rand(1000000..9999999).to_s,
  contact_preference: "Email",
  notification_group: "None",
  admin: false,
  monday_days: rand(2) == 1 ? true : false,
  monday_nights: rand(2) == 1 ? true : false,
  tuesday_days: rand(2) == 1 ? true : false,
  tuesday_nights: rand(2) == 1 ? true : false,
  wednesday_days: rand(2) == 1 ? true : false,
  wednesday_nights: rand(2) == 1 ? true : false,
  thursday_days: rand(2) == 1 ? true : false,
  thursday_nights: rand(2) == 1 ? true : false,
  friday_days: rand(2) == 1 ? true : false,
  friday_nights: rand(2) == 1 ? true : false,
  saturday_days: rand(2) == 1 ? true : false,
  saturday_nights: rand(2) == 1 ? true : false,
  sunday_days: rand(2) == 1 ? true : false,
  sunday_nights: rand(2) == 1 ? true : false,
  password: "test123",
  password_confirmation: "test123"
}])
end

#Doctor.create!([
# {
# id: 3,
# name: "jon sutcliffe5",
# email: ​"jonnylawrence5@yahoo.co.uk",
# consultant: true,
# mobile: "0743-232344",
# contact_preference: "Email",
# notification_group: "None",
# admin: false,
# password: "jon123",
# password_confirmation: "jon123"
# }])


p "Created #{Doctor.count} doctors"

Location.create!([
{
  id: 1,
name: "Warrington"
},
{
  id: 2,
name: "Helens/Knowsley"
},
{
  id: 3,
name: "Halton"
},
{
  id: 4,
name: "Cross CAMHS"
}])

 p "Created #{Location.count} locations"

(1..3).each do |i|
  (21..30).each do |dd|
 Rotum.create!([{Date: "2016/11/#{dd}",
  location_id: i,
   First_on_call_day_id: 1 + rand(10),
   First_on_call_day_trade: "false"}])
 end
end
  (21..30).each do |dd|
 Rotum.create!([{Date: "2016/11/#{dd}",
   location_id: 4,
   First_on_call_nights_id: 1 + rand(10),
   Second_on_call_id: 1 + rand(10),
   Consultant_id: 1 + rand(5),
   First_on_call_nights_trade: "false",
   Second_on_call_trade: "true",
   Consultant_trade: "false"}])
end

 p "Created #{Rotum.count} rotas"

 Audit.destroy_all

 p "audit cleaned"

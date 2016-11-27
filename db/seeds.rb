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
  mobile: "000-000-000",
  contact_preference: "Email",
  notification_group: "None",
  admin: false,
  password: "locum123",
  password_confirmation: "locum123"

} ,
{
id: 2,
name: "Homer Simpson",
email: "Homer@yahoo.co.uk",
consultant: true,
mobile: "0743-232344",
contact_preference: "Email",
notification_group: "None",
  admin: false,
password: "jon123",
password_confirmation: "jon123"
} ,
{
id: 3,
name: "Jon S",
email: "jonnylawrence@yahoo.co.uk",
consultant: true,
mobile: "0743-999999",
contact_preference: "SMS",
notification_group: "None",
  admin: true,
password: "jon123",
password_confirmation: "jon123"
} ,
{
id: 4,
name: "Margarie Simpson",
email: "MSimpson@yahoo.co.uk",
consultant: true,
mobile: "0743-232344",
contact_preference: "Email",
notification_group: "None",
  admin: false,
password: "testdoctor",
password_confirmation: "testdoctor"
} ,
{
id: 5,
name: "Brian Crazy",
email: "bcrazy@yahoo.co.uk",
consultant: true,
mobile: "0743-232344",
contact_preference: "Email",
notification_group: "None",
  admin: false,
password: "testdoctor",
password_confirmation: "testdoctor"
} ,
{
id: 6,
name: "Colin Baker",
email: "colin@yahoo.co.uk",
consultant: false,
mobile: "0743-232344",
contact_preference: "Email",
notification_group: "None",
  admin: false,
password: "testdoctor",
password_confirmation: "testdoctor"
} ,
{
id: 7,
name: "Daniel Darker",
email: "dd@yahoo.co.uk",
consultant: false,
mobile: "0743-232344",
contact_preference: "Email",
notification_group: "None",
  admin: false,
password: "testdoctor",
password_confirmation: "testdoctor"
} ,
{
id: 8,
name: "Mark Nuts",
email: "marknuts@yahoo.co.uk",
consultant: false,
mobile: "0743-232344",
contact_preference: "Email",
notification_group: "None",
  admin: false,
password: "testdoctor",
password_confirmation: "testdoctor"
} ,
{
  id: 9,
name: "Alice Slasher",
email: "AliceS@yahoo.co.uk",
consultant: false,
mobile: "0743-232344",
contact_preference: "Email",
notification_group: "None",
  admin: false,
password: "testdoctor",
password_confirmation: "testdoctor"
} ,
{
  id: 10,
name: "Mary Popper",
email: "mpopper@yahoo.co.uk",
consultant: false,
mobile: "0743-232344",
contact_preference: "Email",
notification_group: "None",
  admin: false,
password: "testdoctor",
password_confirmation: "testdoctor"
}])

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

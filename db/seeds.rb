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

Doctor.create!([
{
  name: "Locum",
  email: "Locum@yahoo.co.uk",
  consultant: true,
  mobile: "000-000-000",
  contact_preference: "Email",
  notification_group: "None",
  password: "locum123",
  password_confirmation: "locum123"
} ,
{
name: "Homer Simpson",
email: "Homer@yahoo.co.uk",
consultant: true,
mobile: "0743-232344",
contact_preference: "Email",
notification_group: "None",
password: "jon123",
password_confirmation: "jon123"
} ,
{
name: "Jon Jay",
email: "j@yahoo.co.uk",
consultant: true,
mobile: "0743-999999",
contact_preference: "SMS",
notification_group: "None",
password: "jon123",
password_confirmation: "jon123"
} ,
{
name: "Margarie Simpson",
email: "MSimpson@yahoo.co.uk",
consultant: true,
mobile: "0743-232344",
contact_preference: "Email",
notification_group: "None",
password: "testdoctor",
password_confirmation: "testdoctor"
} ,
{
name: "Brian Crazy",
email: "bcrazy@yahoo.co.uk",
consultant: true,
mobile: "0743-232344",
contact_preference: "Email",
notification_group: "None",
password: "testdoctor",
password_confirmation: "testdoctor"
} ,
{
name: "Colin Baker",
email: "colin@yahoo.co.uk",
consultant: false,
mobile: "0743-232344",
contact_preference: "Email",
notification_group: "None",
password: "testdoctor",
password_confirmation: "testdoctor"
} ,
{
name: "Daniel Darker",
email: "dd@yahoo.co.uk",
consultant: false,
mobile: "0743-232344",
contact_preference: "Email",
notification_group: "None",
password: "testdoctor",
password_confirmation: "testdoctor"
} ,
{
name: "Mark Nuts",
email: "marknuts@yahoo.co.uk",
consultant: false,
mobile: "0743-232344",
contact_preference: "Email",
notification_group: "None",
password: "testdoctor",
password_confirmation: "testdoctor"
} ,
{
name: "Alice Slasher",
email: "AliceS@yahoo.co.uk",
consultant: false,
mobile: "0743-232344",
contact_preference: "Email",
notification_group: "None",
password: "testdoctor",
password_confirmation: "testdoctor"
} ,
{
name: "Mary Popper",
email: "mpopper@yahoo.co.uk",
consultant: false,
mobile: "0743-232344",
contact_preference: "Email",
notification_group: "None",
password: "testdoctor",
password_confirmation: "testdoctor"
}])

p "Created #{Doctor.count} doctors"

Location.create!([
{
name: "Warrington"
},
{
name: "St Helens/Knowsley"
},
{
name: "Halton"
}])

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
name: "St Helens/Knowsley"
},
{
  id: 3,
name: "Halton"
}])

 p "Created #{Location.count} locations"

(1..3).each do |i|
 Rotum.create!([{Date: "2016/11/21",
    location_id: i,
   First_on_call_nights_id: 1 + rand(10),
   Second_on_call_id: 1 + rand(10),
   First_on_call_day_id: 1 + rand(10),
   Consultant_id: 1 + rand(5),
   First_on_call_nights_trade: "false",
   First_on_call_day_trade: "false",
   Second_on_call_trade: "true",
   Consultant_trade: "false"},

{Date: "2016/11/22",
location_id: i,
First_on_call_nights_id: 1 + rand(10),
Second_on_call_id: 1 + rand(10),
First_on_call_day_id: 1 + rand(10),
Consultant_id: 1 + rand(5),
First_on_call_nights_trade: 'false',
First_on_call_day_trade: 'false',
Second_on_call_trade: 'true',
Consultant_trade: 'false'},

{Date: "2016/11/23",
location_id: i,
First_on_call_nights_id: 1 + rand(10),
Second_on_call_id: 1 + rand(10),
First_on_call_day_id: 1 + rand(10),
Consultant_id: 1 + rand(5),
First_on_call_nights_trade: 'false',
First_on_call_day_trade: 'false',
Second_on_call_trade: 'false',
Consultant_trade: 'true'},

{Date: "2016/11/24",
location_id: i,
First_on_call_nights_id: 1 + rand(10),
Second_on_call_id: 1 + rand(10),
First_on_call_day_id: 1 + rand(10),
Consultant_id: 1 + rand(5),
First_on_call_nights_trade: 'false',
First_on_call_day_trade: 'false',
Second_on_call_trade: 'false',
Consultant_trade: 'false'},

{Date: "2016/11/25",
location_id: i,
First_on_call_nights_id: 1 + rand(10),
Second_on_call_id: 1 + rand(10),
First_on_call_day_id: 1 + rand(10),
Consultant_id: 1 + rand(5),
First_on_call_nights_trade: 'false',
First_on_call_day_trade: 'false',
Second_on_call_trade: 'true',
Consultant_trade: 'false'},

{Date: "2016/11/26",
location_id: i,
First_on_call_nights_id: 1 + rand(10),
Second_on_call_id: 1 + rand(10),
First_on_call_day_id: 1 + rand(10),
Consultant_id: 1 + rand(5),
First_on_call_nights_trade: 'false',
First_on_call_day_trade: 'false',
Second_on_call_trade: 'false',
Consultant_trade: 'false'},

{Date: "2016/11/27",
location_id: i,
First_on_call_nights_id: 1 + rand(10),
Second_on_call_id: 1 + rand(10),
First_on_call_day_id: 1 + rand(10),
Consultant_id: 1 + rand(5),
First_on_call_nights_trade: 'false',
First_on_call_day_trade: 'false',
Second_on_call_trade: 'true',
Consultant_trade: 'false'},

{Date: "2016/11/28",
location_id: i,
First_on_call_nights_id: 1 + rand(10),
Second_on_call_id: 1 + rand(10),
First_on_call_day_id: 1 + rand(10),
Consultant_id: 1 + rand(5),
First_on_call_nights_trade: 'false',
First_on_call_day_trade: 'false',
Second_on_call_trade: 'false',
Consultant_trade: 'false'},

{Date: "2016/11/29",
location_id: i,
First_on_call_nights_id: 1 + rand(10),
Second_on_call_id: 1 + rand(10),
First_on_call_day_id: 1 + rand(10),
Consultant_id: 1 + rand(5),
First_on_call_nights_trade: 'false',
First_on_call_day_trade: 'true',
Second_on_call_trade: 'false',
Consultant_trade: 'false'},

{Date: "2016/11/30",
location_id: i,
First_on_call_nights_id: 1 + rand(10),
Second_on_call_id: 1 + rand(10),
First_on_call_day_id: 1 + rand(10),
Consultant_id: 1 + rand(5),
First_on_call_nights_trade: 'false',
First_on_call_day_trade: 'false',
Second_on_call_trade: 'false',
Consultant_trade: 'false'},

{Date: "2016/12/01",
location_id: i,
First_on_call_nights_id: 1 + rand(10),
Second_on_call_id: 1 + rand(10),
First_on_call_day_id: 1 + rand(10),
Consultant_id: 1 + rand(5),
First_on_call_nights_trade: 'false',
First_on_call_day_trade: 'false',
Second_on_call_trade: 'false',
Consultant_trade: 'false'},

{Date: "2016/12/02",
location_id: i,
First_on_call_nights_id: 1 + rand(10),
Second_on_call_id: 1 + rand(10),
First_on_call_day_id: 1 + rand(10),
Consultant_id: 1 + rand(5),
First_on_call_nights_trade: 'false',
First_on_call_day_trade: 'false',
Second_on_call_trade: 'false',
Consultant_trade: 'false'},

{Date: "2016/12/03",
location_id: i,
First_on_call_nights_id: 1 + rand(10),
Second_on_call_id: 1 + rand(10),
First_on_call_day_id: 1 + rand(10),
Consultant_id: 1 + rand(5),
First_on_call_nights_trade: 'false',
First_on_call_day_trade: 'false',
Second_on_call_trade: 'true',
Consultant_trade: 'false'},

{Date: "2016/12/04",
location_id: i,
First_on_call_nights_id: 1 + rand(10),
Second_on_call_id: 1 + rand(10),
First_on_call_day_id: 1 + rand(10),
Consultant_id: 1 + rand(5),
First_on_call_nights_trade: 'false',
First_on_call_day_trade: 'false',
Second_on_call_trade: 'false',
Consultant_trade: 'false'},

{Date: "2016/12/05",
location_id: i,
First_on_call_nights_id: 1 + rand(10),
Second_on_call_id: 1 + rand(10),
First_on_call_day_id: 1 + rand(10),
Consultant_id: 1 + rand(5),
First_on_call_nights_trade: 'false',
First_on_call_day_trade: 'false',
Second_on_call_trade: 'true',
Consultant_trade: 'false'},

{Date: "2016/12/06",
location_id: i,
First_on_call_nights_id: 1 + rand(10),
Second_on_call_id: 1 + rand(10),
First_on_call_day_id: 1 + rand(10),
Consultant_id: 1 + rand(5),
First_on_call_nights_trade: 'false',
First_on_call_day_trade: 'false',
Second_on_call_trade: 'true',
Consultant_trade: 'false'},

{Date: "2016/12/07",
location_id: i,
First_on_call_nights_id: 1 + rand(10),
Second_on_call_id: 1 + rand(10),
First_on_call_day_id: 1 + rand(10),
Consultant_id: 1 + rand(5),
First_on_call_nights_trade: 'false',
First_on_call_day_trade: 'false',
Second_on_call_trade: 'true',
Consultant_trade: 'false'},

{Date: "2016/12/08",
location_id: i,
First_on_call_nights_id: 1 + rand(10),
Second_on_call_id: 1 + rand(10),
First_on_call_day_id: 1 + rand(10),
Consultant_id: 1 + rand(5),
First_on_call_nights_trade: 'false',
First_on_call_day_trade: 'false',
Second_on_call_trade: 'true',
Consultant_trade: 'false'},

{Date: "2016/12/09",
location_id: i,
First_on_call_nights_id: 1 + rand(10),
Second_on_call_id: 1 + rand(10),
First_on_call_day_id: 1 + rand(10),
Consultant_id: 1 + rand(5),
First_on_call_nights_trade: 'false',
First_on_call_day_trade: 'false',
Second_on_call_trade: 'true',
Consultant_trade: 'false'}
     ])
end


 p "Created #{Rotum.count} rotas"

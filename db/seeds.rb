# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#Doctor.destroy_all
Doctor.create!([
{
name: "Jon Sutcliffe",
email: "jonnylawrence@yahoo.co.uk",
consultant: true,
password: "jon123",
password_confirmation: "jon123"
} ,
{
name: "Alison Sutcliffe",
email: "alison@yahoo.co.uk",
consultant: true,
password: "testdoctor",
password_confirmation: "testdoctor"
} ,
{
name: "Brian Crazy",
email: "bcrazy@yahoo.co.uk",
consultant: true,
password: "testdoctor",
password_confirmation: "testdoctor"
} ,
{
name: "colin Baker",
email: "colin@yahoo.co.uk",
consultant: false,
password: "testdoctor",
password_confirmation: "testdoctor"
} ,
{
name: "Daniel Darker",
email: "dd@yahoo.co.uk",
consultant: false,
password: "testdoctor",
password_confirmation: "testdoctor"
} ,
{
name: "Mark Nuts",
email: "marknuts@yahoo.co.uk",
consultant: false,
password: "testdoctor",
password_confirmation: "testdoctor"
} ,
{
name: "Alice Slasher",
email: "AliceS@yahoo.co.uk",
consultant: false,
password: "testdoctor",
password_confirmation: "testdoctor"
} ,
{
name: "mary popper",
email: "mpopper@yahoo.co.uk",
consultant: false,
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

Rotum.create!([
{
Date: "2016-11-20",
location_id:  37,
First_on_call_nights_id: 109,
Second_on_call_id: 109,
First_on_call_day_id: 109,
Consultant_id: 112
}]) 

p "Created #{Rotum.count} rotas"


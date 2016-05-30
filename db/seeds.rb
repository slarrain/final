# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Clean the DBs
User.delete_all
Food.delete_all
Score.delete_all
Menu.delete_all
Attendance.delete_all

print "Database deleted!.\n"

#Create some food
tallarines = Food.create(:name => "Tallarines", :photo_url => "http://www.facilfood.cl/kcfinder/upload/images/original/recetas/tallarines-con-salsa-de-carne-286-640x480.jpg", :comments => "Delicious")
porotos = Food.create(:name => "Porotos", :photo_url => "http://www.gustocriollo.cl/wp-content/uploads/2012/09/porotos.jpeg", :comments => "Typical chilean")
machas = Food.create(:name => "Machas", :photo_url => "https://s-media-cache-ak0.pinimg.com/736x/b9/0e/59/b90e590c2f0374a3b2333141cad9a4d2.jpg", :comments => "Seafood")
corvina = Food.create(:name => "Corvina", :photo_url => "http://www.clarkfish.com/wp-content/uploads/2014/09/baked-corvina.jpg", :comments => "Chilean Fish")
shrimp = Food.create(:name => "Shrimp", :photo_url => "http://rasamalaysia.com/wp-content/uploads/2016/02/garlic-shrimp-thumb.jpg", :comments => "Who doesn't like shrimp?")
lomo = Food.create(:name => "Lomo", :photo_url => "http://labougie.cl/wp/wp-content/uploads/2014/12/lomo-a-lo-pobre.png", :comments => "Meat+Eggs+Fries = Lomo a lo pobre")
pasta = Food.create(:name => "Pasta", :photo_url => "http://i.ndtvimg.com/i/2015-07/spaghetti_625x350_61436865755.jpg", :comments => "Boring pasta")

print "There are now #{Food.count} foods in the database.\n"
#Create users
santiago = User.create name: 'Santiago', email: 'santiago@example.org', password: 'santiago123', password_confirmation: 'santiago123'
ale = User.create name: 'Ale', email: 'ale@example.org', password: 'ale123', password_confirmation: 'ale123'
jo = User.create name: 'Jo', email: 'jo@example.org', password: 'jo123', password_confirmation: 'jo123'
pilar = User.create name: 'Pilar', email: 'pilar@example.org', password: 'pilar123', password_confirmation: 'pilar123'

print "There are now #{User.count} users in the database.\n"

#Creating Attendances
#Ale
a = Attendance.new
a.user_id = ale.id
a.date = '2016-06-01'
a.save
a = Attendance.new
a.user_id = ale.id
a.date = '2016-06-02'
a.save
a = Attendance.new
a.user_id = ale.id
a.date = '2016-06-03'
a.save
a = Attendance.new
a.user_id = ale.id
a.date = '2016-06-15'
a.save
a = Attendance.new
a.user_id = ale.id
a.date = '2016-06-16'
a.save

#santiago
a = Attendance.new
a.user_id = santiago.id
a.date = '2016-06-01'
a.save
a = Attendance.new
a.user_id = santiago.id
a.date = '2016-06-02'
a.save
a = Attendance.new
a.user_id = santiago.id
a.date = '2016-06-03'
a.save
a = Attendance.new
a.user_id = santiago.id
a.date = '2016-06-15'
a.save
a = Attendance.new
a.user_id = santiago.id
a.date = '2016-06-16'
a.save

#Jo
a = Attendance.new
a.user_id = jo.id
a.date = '2016-06-01'
a.save
a = Attendance.new
a.user_id = jo.id
a.date = '2016-06-02'
a.save
a = Attendance.new
a.user_id = jo.id
a.date = '2016-06-03'
a.save
a = Attendance.new
a.user_id = jo.id
a.date = '2016-07-01'
a.save
a = Attendance.new
a.user_id = jo.id
a.date = '2016-07-02'
a.save

#Pilar
a = Attendance.new
a.user_id = pilar.id
a.date = '2016-06-01'
a.save
a = Attendance.new
a.user_id = pilar.id
a.date = '2016-06-02'
a.save
a = Attendance.new
a.user_id = pilar.id
a.date = '2016-06-03'
a.save
a = Attendance.new
a.user_id = pilar.id
a.date = '2016-07-01'
a.save
a = Attendance.new
a.user_id = pilar.id
a.date = '2016-07-02'
a.save

print "There are now #{Attendance.count} attendances in the database.\n"


#tallarines
Score.create(food_id: tallarines.id, user_id: ale.id, value: '9', dont_like: '0')
Score.create(food_id: tallarines.id, user_id: santiago.id, value: '6', dont_like: '0')
Score.create(food_id: tallarines.id, user_id: jo.id, value: '10', dont_like: '0')
Score.create(food_id: tallarines.id, user_id: pilar.id, value: '3', dont_like: '1')

#porotos
Score.create(food_id: porotos.id, user_id: ale.id, value: '6', dont_like: '0')
Score.create(food_id: porotos.id, user_id: santiago.id, value: '1', dont_like: '1')
Score.create(food_id: porotos.id, user_id: jo.id, value: '2', dont_like: '1')
Score.create(food_id: porotos.id, user_id: pilar.id, value: '4', dont_like: '1')

#Machas
Score.create(food_id: machas.id, user_id: ale.id, value: '7', dont_like: '0')
Score.create(food_id: machas.id, user_id: santiago.id, value: '10', dont_like: '0')
Score.create(food_id: machas.id, user_id: jo.id, value: '8', dont_like: '0')
Score.create(food_id: machas.id, user_id: pilar.id, value: '6', dont_like: '0')

#Corvina
Score.create(food_id: corvina.id, user_id: ale.id, value: '5', dont_like: '1')
Score.create(food_id: corvina.id, user_id: santiago.id, value: '4', dont_like: '1')
Score.create(food_id: corvina.id, user_id: jo.id, value: '3', dont_like: '1')
Score.create(food_id: corvina.id, user_id: pilar.id, value: '3', dont_like: '1')

#shrimp
Score.create(food_id: shrimp.id, user_id: ale.id, value: '10', dont_like: '0')
Score.create(food_id: shrimp.id, user_id: santiago.id, value: '6', dont_like: '0')
Score.create(food_id: shrimp.id, user_id: jo.id, value: '4', dont_like: '1')
Score.create(food_id: shrimp.id, user_id: pilar.id, value: '8', dont_like: '0')

#lomo-a-lo-pobre
Score.create(food_id: lomo.id, user_id: ale.id, value: '10', dont_like: '0')
Score.create(food_id: lomo.id, user_id: santiago.id, value: '9', dont_like: '0')
Score.create(food_id: lomo.id, user_id: jo.id, value: '6', dont_like: '0')
Score.create(food_id: lomo.id, user_id: pilar.id, value: '5', dont_like: '0')

#pasta
Score.create(food_id: pasta.id, user_id: ale.id, value: '4', dont_like: '1')
Score.create(food_id: pasta.id, user_id: santiago.id, value: '4', dont_like: '1')
Score.create(food_id: pasta.id, user_id: jo.id, value: '7', dont_like: '0')
Score.create(food_id: pasta.id, user_id: pilar.id, value: '3', dont_like: '1')

print "There are now #{Score.count} scores in the database.\n"


#Create Menus
Menu.create(date: '2016-06-01', food_id: tallarines.id, comments: "Not much to say")
Menu.create(date: '2016-06-02', food_id: porotos.id, comments: "Does anybody like this?")
Menu.create(date: '2016-06-03', food_id: corvina.id, comments: "Fresh out of the water", lunch: '1')
Menu.create(date: '2016-06-03', food_id: shrimp.id, comments: "Perfect way to end the weekend")
Menu.create(date: '2016-06-15', food_id: pasta.id, comments: "Something simple for the first day")
Menu.create(date: '2016-06-16', food_id: lomo.id, comments: "Perfect lunch. Then a nap", lunch: '1')
Menu.create(date: '2016-07-01', food_id: machas.id, comments: "A la parmesana. Las mejores!")
Menu.create(date: '2016-07-02', food_id: porotos.id, comments: "Open to suggestions", lunch: '1')
Menu.create(date: '2017-01-01', food_id: porotos.id, comments: "It looks I'll be alone", lunch: '1')


print "There are now #{Menu.count} menus in the database.\n"

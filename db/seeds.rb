# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Environment variables (ENV['...']) can be set in the file config/application.yml.
# See http://railsapps.github.io/rails-environment-variables.html
puts 'ROLES'
YAML.load(ENV['ROLES']).each do |role|
  Role.find_or_create_by_name(role)
  puts 'role: ' << role
end
puts 'DEFAULT USERS'
user = User.find_or_create_by_email :name => ENV['ADMIN_NAME'].dup, :email => ENV['ADMIN_EMAIL'].dup, :password => ENV['ADMIN_PASSWORD'].dup, :password_confirmation => ENV['ADMIN_PASSWORD'].dup
puts 'user: ' << user.name
user.add_role :admin


place = Place.find_or_create_by_name :name =>"30 Raffles Avenue #01-07 Singapore Flyer S039803",   :address =>  "Outdoor", :description => ",:category => "30" , :visit_time_minutes =>"803.333333333333"
place = Place.find_or_create_by_name :name =>"85 Sultan Gate S198501",   :address =>  "Museum", :description => ",:category => "60" , :visit_time_minutes =>"803.333333333333"
place = Place.find_or_create_by_name :name =>"Connaught Drive S179681",   :address =>  "Outdoor", :description => ",:category => "30" , :visit_time_minutes =>"0.375"
place = Place.find_or_create_by_name :name =>"333A Orchard Road #03-01 Mandarin Gallery S238897",   :address =>  "Museum", :description => ",:category => "60" , :visit_time_minutes =>"0.458333333333333"
place = Place.find_or_create_by_name :name =>"33 Allanbrooke Road S099981",   :address =>  "Outdoor", :description => ",:category => "240" , :visit_time_minutes =>"0.416666666666667"
place = Place.find_or_create_by_name :name =>"38 North Canal Road S059294",   :address =>  "Museum", :description => ",:category => "60" , :visit_time_minutes =>"0.458333333333333"
place = Place.find_or_create_by_name :name =>"80 Mandai Lake Road Singapore Zoological Gardens S729826",   :address =>  "Outdoor", :description => ",:category => "180" , :visit_time_minutes =>"0.354166666666667"
place = Place.find_or_create_by_name :name =>"40 Imbiah Road S099700",   :address =>  "Museum", :description => ",:category => "60" , :visit_time_minutes =>"0.375"
place = Place.find_or_create_by_name :name =>"62 Hill Street Central Fire Station S179367",   :address =>  "Museum", :description => ",:category => "60" , :visit_time_minutes =>"0.416666666666667"
place = Place.find_or_create_by_name :name =>"288 South Bridge Road S058840",   :address =>  "Religion", :description => ",:category => "60" , :visit_time_minutes =>"0.291666666666667"
place = Place.find_or_create_by_name :name =>"39 Armenian Street S179941",   :address =>  "Museum", :description => ",:category => "60" , :visit_time_minutes =>"0.375"
place = Place.find_or_create_by_name :name =>"15 Science Centre Road S609081",   :address =>  "Attractions", :description => ",:category => "90" , :visit_time_minutes =>"0.416666666666667"
place = Place.find_or_create_by_name :name =>"1 Cluny Road Singapore Botanic Gardens S259569",   :address =>  "Gardens ", :description => ",:category => "120" , :visit_time_minutes =>"0.208333333333333"
place = Place.find_or_create_by_name :name =>"301 Neo Tiew Crescent S718925",   :address =>  "Nature", :description => ",:category => "120" , :visit_time_minutes =>"0.3125"
place = Place.find_or_create_by_name :name =>"1 Empress Place S179555",   :address =>  "Museum", :description => ",:category => "90" , :visit_time_minutes =>"0.375"
place = Place.find_or_create_by_name :name =>"18 Marina Gardens Drive S018953",   :address =>  "Gardens ", :description => ",:category => "60" , :visit_time_minutes =>"0.375"
place = Place.find_or_create_by_name :name =>"18 Marina Gardens Drive S018953",   :address =>  "Gardens ", :description => ",:category => "60" , :visit_time_minutes =>"0.375"
place = Place.find_or_create_by_name :name =>"18 Marina Gardens Drive S018953",   :address =>  "Gardens ", :description => ",:category => "90" , :visit_time_minutes =>"0.208333333333333"
place = Place.find_or_create_by_name :name =>"93 Stamford Road S178897",   :address =>  "Museum", :description => ",:category => "90" , :visit_time_minutes =>"0.416666666666667"
place = Place.find_or_create_by_name :name =>"108 Robinson Road #11-01 / #12-01 Finexis Building S068900",   :address =>  "Religion and cultural", :description => ",:category => "30" , :visit_time_minutes =>""
place = Place.find_or_create_by_name :name =>"351 Upper Bukit Timah Road S588192",   :address =>  "Monuments/ Statues ", :description => ",:category => "60" , :visit_time_minutes =>"0.375"
place = Place.find_or_create_by_name :name =>"80 Mandai Lake Road S729826",   :address =>  "Zoo", :description => ",:category => "120" , :visit_time_minutes =>"0.729166666666667"

require 'database_cleaner'

DatabaseCleaner.clean_with :truncation

puts "Creando usuarios" 

def create_user(login, email, nombre = Faker::Name.name)
  pwd = '12345678'
  puts "    #{login}"
  User.create!(login: login, email: email, nombre: nombre)
end

(1..9).each do |i|
  user = create_user("user#{i}", "user#{i}@madrid.es")
end

puts "Creado subrocesos"

descripcion_2 = Faker::Lorem.words(25)
(1..30).each do |i|
  sbp = Subproceso.create!(orden: i,
          descripcion: Faker::Lorem.sentence(1).truncate(60),
          created_at: rand((Time.now - 1.week) .. Time.now))
  puts "    #{sbp.descripcion}" 
end

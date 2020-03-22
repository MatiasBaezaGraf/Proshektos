print "Escriba su primer nombre: "
nombre = gets
nombre = nombre.chomp

print "Escriba su segundo nombre: "
s_nombre = gets
s_nombre = nombre.chomp

print "Escriba su apellido completo: "
apellido = gets
apellido = apellido.chomp

puts "Hola #{nombre} #{s_nombre} #{apellido}"
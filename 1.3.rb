print "Escriba lo que quiera: "

frase = gets
frase = frase.chomp

x = 1

until x > 100
    puts "#{x} #{frase}"
    x += 1
end

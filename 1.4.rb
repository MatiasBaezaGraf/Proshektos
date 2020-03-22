print "Que le queres decir a la Abuelita?: "

frase = gets
frase = frase.chomp

while frase != "ADIOS"

    año = rand(1930 - 1950) + 1930
    
    if frase != frase.upcase
        puts "Abuela: HUH?! ¡HABLA MAS FUERTE, HIJO!"
    end

    if frase == frase.upcase
        puts "Abuela: NO, ¡NO DESDE #{año}"
    end

    print "Que le queres decir a la Abuelita?: "

    frase = gets
    frase = frase.chomp
end

print "Abuela: ADIOS HIJO!"
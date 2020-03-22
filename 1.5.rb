d = 0 

while d < 3

    print "Que le queres decir a la Abuelita?: "

    frase = gets
    frase = frase.chomp

    año = rand(1930 - 1950) + 1930        
    
    if frase != frase.upcase
        puts "Abuela: HUH?! ¡HABLA MAS FUERTE, HIJO!"
        d = 0
    end

    if frase != "ADIOS"
        if frase == frase.upcase
            puts "Abuela: NO, ¡NO DESDE #{año}!"
            d = 0
        end
    end

    if frase == "ADIOS"

        d += 1

        if d != 3
            puts "Abuela: ¡NO TE ENTIENDO HIJO!"
        end
    end

    

end

print "Abuela: ADIOS HIJO!"
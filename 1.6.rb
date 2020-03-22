print "Elija un año de inicio: "
año_1 = gets
año_1 = año_1.to_f
print "Elija un año de fin: "
año_2 = gets
año_2 = año_2.to_f

puts "Del rango de años que eligió"

while (año_1 != (año_2 + 1))

    if ((año_1 % 4) == 0)
        puts "El año #{año_1.to_i} fue bisiesto"
    end

    año_1 += 1
end
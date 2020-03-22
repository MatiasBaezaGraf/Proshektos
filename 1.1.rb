puts "Elija una letra de las siguientes: a, b, c, d"

letra = gets
letra = letra.chomp

case letra
when "a"
    puts "Un año tiene 8760 horas"
when "b"
    minutos = (60 * 24 * 365 * 10) + (60 * 24 * 2)
    puts "Una década tiene #{minutos} minutos"
when "c"
    puts "Inserte su edad:"
    edad = gets
when "d"
    sec = 1031000000
    years = Time.at(sec).utc.strftime("%Y")
    years = years.to_i - 1970
    puts "Si tengo 1031 millones de segundos de edad tengo #{years} años"
else
    "#{letra} no es una de las opciones"
end
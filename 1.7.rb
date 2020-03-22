time_now = Time.now
time_today = Time.new(time_now.year, time_now.month, time_now.day)

time_quantity = time_now.hour - time_today.hour

counter = 1

while counter <= time_quantity

    if counter <= 12
        puts "Ya pasaron las #{counter} am"
    elsif counter > 12
        puts "Ya pasaron las #{counter/2} pm"
    end

    counter += 1

end
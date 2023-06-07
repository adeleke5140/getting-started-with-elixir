f_to_c = fn temp -> "#{(temp - 32) * 5 / 9}°C" end

seconds_in_day = fn day -> 60 * 60 * 24 * day end

get_average_age = fn person1, person2 -> (person1.age + person2.age) / 2 end

# shorter but a bit harder to read and understand
get_average_age_remix = &((&1.age + &2.age) / 2)

person1 = %{
  name: 'Kehinde',
  age: 22,
  occupation: 'engineer'
}

person2 = %{
  name: 'Taiwo',
  age: 22,
  occupation: 'accountant'
}

IO.puts(f_to_c.(100))
IO.puts(seconds_in_day.(1))
IO.puts(get_average_age.(person1, person2))
IO.puts(get_average_age_remix.(person1, person2))

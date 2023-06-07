# Pattern matching with Lists

# Given a list
those_who_are_assembled = [
  %{age: "30ish", gender: "Female", name: "Izzy"},
  %{age: "30ish", gender: "Male", name: "The Author"},
  %{age: "56", gender: "Male", name: "Roberto"},
  %{age: "38", gender: "Female", name: "Juliet"},
  %{age: "21", gender: "Female", name: "Mary"},
  %{age: "67", gender: "Female", name: "Bobalina"},
  %{age: "54", gender: "Male", name: "Charlie"},
  %{age: "10", gender: "Male", name: "Charlie (no relation)"}
]

# this reminds me of array destructuring in javascript: const { obj1, obj2 } = arr
[first, second, third | others] = those_who_are_assembled

# IO.inspect(first)
# IO.inspect(others)

# Remarks
# An error occurs in the console when I used IO.puts. The error was: the protocol String.Chars not implemented for a map.
# I believe it is because the IO.puts method cannot sufficiently convert the map to a string.
# Io.inspect works fine though.

# Pattern matching with Maps

person = %{
  name: "Kehinde",
  age: 22,
  occupation: 'Engineer',
  girlfriend: 'yes'
}

# %{name: firstName, age: realAge, girlfriend: babe} = person

# Pattern matching with List and Maps

[first_person = %{name: firstName} | other_people] = those_who_are_assembled

# IO.puts(firstName)

# Pattern matching with functions

# _ looks like a good way to handle errors especially when we pass in the wrong arguments
road = fn
  "high" -> "You take the high road!"
  "low" -> "I'll take the low road! (and I'll get to Scotland before you)"
  _ -> "Take the high or low road"
end

IO.puts(road.("high"))
IO.puts(road.("low"))
IO.puts(road.("middle"))

# Pattern matching with maps in functions

greeting = fn
  %{name: name} -> "Hello #{name}"
  %{} -> "Hello, Anonymous stranger"
end

IO.puts(greeting.(person))
IO.inspect(greeting.(%{}))

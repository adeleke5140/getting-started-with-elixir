# just like in other languages, variables hold values
# the values could be of type string, number, list, maps e.t.c
name = "Kehinde"
surname = "Adeleke"
age = 20

# list
brothers = ["Kehinde", "Taiwo", "Opeyemi"]

# map
person = %{
  name: 'Kehinde',
  age: '22',
  occupation: 'engineer'
}

# interesting stuff, the result is printed as one string with no whitespace
IO.puts(brothers)

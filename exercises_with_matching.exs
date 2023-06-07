randomFunc = fn
  %{name: name} ->
    "You are #{name} but I don't know your age"

  %{name: name, age: age} ->
    "You are #{age} years old #{name}"
end

# The function clause that is matched is the first one. This is interesting. Why though?
IO.puts(randomFunc.(%{name: "Kehinde", age: 22}))

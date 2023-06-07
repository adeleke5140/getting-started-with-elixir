greeting = fn (place) -> "Hello #{place}" end

shortened_greeting = &("Hello #{&1}")

IO.puts greeting.("World")
IO.puts shortened_greeting.("Narnia")

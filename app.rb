char = "a"
char_2 = "b"
puts char.ord
puts char_2.ord

puts "\n\n"
puts char

char.setbyte(0, char.ord + 1)

puts char

unencrypted_string = "What a string!"
shift_offset = 1

#* expected output
# > caesar_cipher("What a string!", 5)
#   => "Bmfy f xywnsl!"

def caesar_cipher( unencrypted_string, shift_offset)

  pp "unencrypted_string : #{unencrypted_string}"

  encrypted_string_array = unencrypted_string.chars.map do |char|

    puts "\n\n"

    puts "char : #{char}"
    puts "char.ord : #{char.ord}"

    valid_char_to_encrypt = char.match?(/[a-zA-z]/)
    puts "valid_char_to_encrypt : #{valid_char_to_encrypt}"

    next char if not valid_char_to_encrypt


    new_char = char

    puts "new_char : #{new_char}"

    new_char.setbyte(0, char.ord + shift_offset)

    puts "new_char (modified) : #{new_char}"

    new_char
  end

  puts "encrypted_string_array : #{encrypted_string_array}"

  encrypted_string = encrypted_string_array.join("")

  puts "encrypted_string : #{encrypted_string}"
  encrypted_string

end

puts caesar_cipher(unencrypted_string, shift_offset)

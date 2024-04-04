unencrypted_string = "What a string!"
shift_offset = 1

#* expected output
# > caesar_cipher("What a string!", 5)
#   => "Bmfy f xywnsl!"

def caesar_cipher( unencrypted_string, shift_offset)

  pp "unencrypted_string : #{unencrypted_string}"

  encrypted_string_array = unencrypted_string.chars.map do |char|

    valid_char_to_encrypt = "[a-zA-Z]".match?(char)
    puts "valid_char_to_encrypt : #{valid_char_to_encrypt}"

    return char if "[a-zA-Z]".match?(char)

    puts "char : #{char}"
    puts "char.ord : #{char.ord}"

    new_char = char

    puts "new_char : #{new_char}"

    new_char.setbyte(0, char.ord + shift_offset)

    puts "new_char (modified) : #{new_char} \n\n"

    new_char
  end
  encrypted_string = encrypted_string_array.join("")
  encrypted_string

end

puts caesar_cipher(unencrypted_string, shift_offset)

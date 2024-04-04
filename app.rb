unencrypted_string = "What a string!"
shift_offset = 5

#* expected output
# > caesar_cipher("What a string!", 5)
#   => "Bmfy f xywnsl!"

def caesar_cipher( unencrypted_string, shift_offset)

  a_to_z_offset = "z".ord - "a".ord

  encrypted_string_array = unencrypted_string.chars.map do |char|

    valid_char_to_encrypt = char.match?(/[a-zA-z]/)

    next char if not valid_char_to_encrypt

    new_char = char

    char_is_uppercase = char == char.upcase
    char_is_lowercase = char == char.downcase

    a_z_swap_needed = if char_is_uppercase
                        (char.ord + shift_offset) > "Z".ord
                      elsif char_is_lowercase
                        (char.ord + shift_offset) > "z".ord
                      else
                        false
                      end

    new_ord = if a_z_swap_needed then char.ord + shift_offset - (a_to_z_offset + 1) else char.ord + shift_offset end

    new_char.setbyte(0, new_ord)

    new_char
  end

  encrypted_string = encrypted_string_array.join("")
  encrypted_string

end

puts caesar_cipher(unencrypted_string, shift_offset)

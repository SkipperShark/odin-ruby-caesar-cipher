unencrypted_string = "What a string!"
shift_offset = 5

# * expected output
# > caesar_cipher("What a string!", 5)
#   => "Bmfy f xywnsl!"

def caesar_cipher(unencrypted_string, shift_offset)
  z_ord = "z".ord
  a_ord = "a".ord

  a_to_z_offset = z_ord - a_ord + 1 # +1 as it takes 1 step to move from a to z

  encrypted_string_array = unencrypted_string.chars.map do |char|
    char_ord = char.ord
    valid_char_to_encrypt = char.match?(/[a-zA-z]/) # we dont want to cipher spaces/punctuation

    next char unless valid_char_to_encrypt

    new_char = char

    char_is_uppercase = char == char.upcase
    char_is_lowercase = char == char.downcase

    a_z_swap_needed = if char_is_uppercase
                        (char_ord + shift_offset) > Z_ord
                      elsif char_is_lowercase
                        (char_ord + shift_offset) > z_ord
                      else
                        false
                      end

    new_ord = a_z_swap_needed ? char_ord + shift_offset - a_to_z_offset : char_ord + shift_offset

    new_char.setbyte(0, new_ord)

    new_char
  end

  encrypted_string_array.join
end

puts caesar_cipher(unencrypted_string, shift_offset)

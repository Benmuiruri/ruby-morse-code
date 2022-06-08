MORSE_CODE = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}.freeze

def decode_char(char)
  MORSE_CODE[char]
end

def decode_word(str)
  str.split.map do |character|
    decode_char(character)
  end.join
end

def decode_message(long_str)
  long_str.strip.split('   ').map do |word|
    decode_word(word)
  end.join(' ')
end

puts decode_message('      .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')

# This is a more compressed shorter version of the above
# def decode_morse(morse_code)
#   morse_code
#     .split('   ')
#     .map do |word|
#       word.split(' ').map { |char| MORSE_CODE[char] }.join
#     end
#     .join(' ')
# end
# puts decode_morse("-- -.--   -. .- -- .")

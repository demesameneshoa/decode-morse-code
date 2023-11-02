def decode_char(character)
  morse_dict = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z'
  }
  morse_dict[character]
end


def decode_word(morse_code)
  morse_code_dict = {
      'A' => '.-', 'B' => '-...', 'C' => '-.-.', 'D' => '-..', 'E' => '.', 'F' => '..-.', 
      'G' => '--.', 'H' => '....', 'I' => '..', 'J' => '.---', 'K' => '-.-',  'L' => '.-..', 
      'M' => '--',  'N' => '-.',  'O' => '---',  'P' => '.--.', 'Q' => '--.-', 'R' => '.-.',  
      'S' => '...',  'T' => '-',   'U' => '..-',  'V' => '...-', 'W' => '.--',  'X' => '-..-', 
      'Y' => '-.--',  'Z' => '--..'
  }
  
  # Reverse the dictionary to map morse code to letters
  morse_code_dict = morse_code_dict.invert
  
  # Split the morse code by space and decode
  return morse_code.split(' ').map { |code| morse_code_dict[code] }.join
end
MORSE_CODE = {
  '-----' => '0',
  '.----' => '1',
  '..---' => '2',
  '...--' => '3',
  '....-' => '4',
  '.....' => '5',
  '-....' => '6',
  '--...' => '7',
  '---..' => '8',
  '----.' => '9',
  '.-' => 'a',
  '-...' => 'b',
  '-.-.' => 'c',
  '-..' => 'd',
  '.' => 'e',
  '..-.' => 'f',
  '--.' => 'g',
  '....' => 'h',
  '..' => 'i',
  '.---' => 'j',
  '-.-' => 'k',
  '.-..' => 'l',
  '--' => 'm',
  '-.' => 'n',
  '---' => 'o',
  '.--.' => 'p',
  '--.-' => 'q',
  '.-.' => 'r',
  '...' => 's',
  '-' => 't',
  '..-' => 'u',
  '...-' => 'v',
  '.--' => 'w',
  '-..-' => 'x',
  '-.--' => 'y',
  '--..' => 'z',
  '.-.-.-' => '.',
  '--..--' => ',',
  '..--..' => '?',
  '-.-.--' => '!',
  '-....-' => '-',
  '-..-.' => '/',
  '.--.-.' => '@',
  '-.--.' => '(',
  '-.--.-' => ')'
}.freeze

def decode_char(char)
  MORSE_CODE[char]
end

def decode_word(word)
  word.split.map { |char| decode_char(char) }.join
end

def decode_message(message)
  message.split('   ').map { |word| decode_word(word) }.join(' ')
end
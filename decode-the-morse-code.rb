def decodeMorse(morseCode)
  words = morseCode.split('   ')
  result = ""
  x = 0
  words.each do |word|
    x += 1
    letters = word.split
    letters.each do |letter|
      result = result + MORSE_CODE[letter]
    end
    if (x < words.length) && (result != "")
      result = result + " "
    end
  end
  return result
end
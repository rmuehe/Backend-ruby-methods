# Write a program hangman.rb that contains a function called hangman. The function's parameters are a word and an array of letters. It returns a string showing the letters that have been guessed. Call the function from within your program so that you know that it works.

# Example: hangman("bob",["b"]) should evaluate to "b_b" Example: hangman("alphabet",["a","h"]) should return "a__ha___"

def hangman(word, letter_arr)
  hang_str = ""
  word.each_char do |char|
    letter_found = false
    for letter in letter_arr   
      if letter == char
        hang_str += char
        letter_found = true
        break
      end
    end
    hang_str += '_' unless letter_found 
  end
  hang_str
end

puts hangman("bob", ['b'])
puts hangman("alphabet", ['a', 'h'])
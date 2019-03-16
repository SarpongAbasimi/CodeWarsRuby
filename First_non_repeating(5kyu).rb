
/*
Write a function named first_non_repeating_letter that takes a string input, 
and returns the first character that is not repeated anywhere in the string.

For example, if given the input 'stress', the function should return 't', 
since the letter t only occurs once in the string, and occurs first in the string.

As an added challenge, upper- and lowercase letters are considered the same character, 
but the function should return the correct case for the initial letter. For example, the input 'sTreSS' should return 'T'.

If a string contains all repeating characters, it should return an empty string ("") or None -- see sample tests.

*/


def  first_non_repeating_letter(s) 
  if s.empty?
    return ""
  end
  covert_to_lowercase = s.downcase

  myArray = []

  split_s = covert_to_lowercase .split('')

  split_s.select do |non_reapeat|
    if covert_to_lowercase.index(non_reapeat) == covert_to_lowercase.rindex(non_reapeat)
      myArray << covert_to_lowercase.index(non_reapeat) 
    end
  end

   myArray.empty? ? "" : s[myArray[0]]
   
end

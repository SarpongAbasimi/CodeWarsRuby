=begin
Given a string str, reverse it omitting all non-alphabetic characters.

Example

For str = "krishan", the output should be "nahsirk".

For str = "ultr53o?n", the output should be "nortlu".

Input/Output

[input] string str

A string consists of lowercase latin letters, digits and symbols.
[output] a string
=end
#Simple Fun #176: Reverse Letter
def m(string)
  myalpha= string.scan(/[a-zA-Z]/).join("")
  return myalpha.split("").reverse.join("")
end

puts m("ultr53o?n")

#method 2
def reverse_letter(string)
  string.gsub(/[^a-zA-Z]/, '').reverse
end

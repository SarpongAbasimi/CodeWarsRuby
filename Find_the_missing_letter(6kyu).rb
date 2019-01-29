=begin
#Find the missing letter
Write a method that takes an array of consecutive (increasing) letters as input and that returns the missing letter in the array.
You will always get an valid array. And it will be always exactly one letter be missing. The length of the array will always be at least 2.
The array will always contain letters in only one case.
Example:

['a','b','c','d','f'] -> 'e'
['O','Q','R','S'] -> 'P'

=end


def find_missing_letter(chars)
    range_alpha = []
    my_map = chars.map {|each_char| each_char}
    for elements in my_map[0]..my_map[my_map.length - 1]
        if !chars.include?(elements)
            return elements
        end
    end
end


Test.describe("Basic tests") do
Test.assert_equals(find_missing_letter(["a","b","c","d","f"]), "e")
Test.assert_equals(find_missing_letter(["O","Q","R","S"]), "P")
Test.assert_equals(find_missing_letter(["b","d"]), "c")
Test.assert_equals(find_missing_letter(["a","b","d"]), "c")
Test.assert_equals(find_missing_letter(["b","d","e"]), "c")
end

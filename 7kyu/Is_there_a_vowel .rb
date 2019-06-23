=begin

Given an array of numbers, check if any of the numbers are the character codes for lower case vowels (a, e, i, o, u).
If they are, change the array value to a string of that vowel.
Return the resulting array.

=end


def is_vow(a)
    array_clone = a
    vowel_code = Hash.new 
    ['a','e','i','o','u'].each do |vow|
        vowel_code[vow.ord] = vow
    end

    array_clone.each do |each_array_number|
        if vowel_code[each_array_number]
            array_clone[array_clone.index(each_array_number)] = vowel_code[each_array_number]
        end
    end
    return array_clone
end


#Better 
def is_vow(a)
  a.map { |l| l.chr =~ /[aeoui]/ ? l.chr : l }
end

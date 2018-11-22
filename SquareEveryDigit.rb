=begin
Welcome. In this kata, you are asked to square every digit of a number.
For example, if we run 9119 through the function,
811181 will come out, because 92 is 81 and 12 is 1.
Note: The function accepts an integer and returns an integer
=end


#Square Every Digit
def square_digits(num)
  splitted=num.to_s.split('')
  mathPow= Proc.new{ |x| x.to_i**2 }
 (splitted.collect(&mathPow).join('')).to_i
end

print(square_digits(3212))

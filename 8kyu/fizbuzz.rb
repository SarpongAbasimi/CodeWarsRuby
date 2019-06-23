def fiz
  newArray =[]
  1.upto(20) do | num|
    newArray << num
  end
  newArray.map do |x|
    x % 3 == 0 && x % 5 ==0 ? 'FizzBuzz' : x % 3 == 0 ? 'Fizz' : x % 5 == 0 ? 'Buzz' : x
  end
end
puts (fiz)

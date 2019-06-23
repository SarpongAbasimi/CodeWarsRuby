def divisors(n)
  #get all num upTo the number
  myArray = []
  myProc = Proc.new { |x| myArray << x if n % x == 0  }
  1.upto(n) do |num|
    localArray= Array.new << num
    localArray.each(&myProc)
  end
  return myArray.count
end


puts divisors(11)

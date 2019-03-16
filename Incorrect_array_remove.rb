=begin
You come across a method for removing all odd numbers from an array

#removing all odd numbers from an array

def remove_odd_numbers_from_array(a)
  a.each do |x|
      if x%2!=0
          a.delete x
      end
  end
  return a
end
=end

#solution
def remove_odd_numbers_from_array(a)
  newArray = []
  a.each do |x|
    if x%2 == 0
      newArray << x
	  end
  end
  return newArray
end

#betterSolution
def remove_odd_numbers_from_array(a)
  return a.select(&:even?)
end

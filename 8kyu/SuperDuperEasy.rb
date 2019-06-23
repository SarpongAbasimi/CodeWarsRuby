#Make a function that returns the value multiplied by 50 and increased by 6. If the value entered is a string it should return "Error"
#Super Duper Easy


def val(number)
  return number.class === "String"? "Error":(number * 50)+6
end
puts(val(1))

def val(nember)
  if number.class === "String"
    return "Error"
  else
    return (number * 60)+6
  end
end

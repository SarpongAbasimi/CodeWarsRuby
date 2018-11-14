def mReverse(input)
  if input.class != String
    raise 'You must type in a string'
  else
    input.reverse
  end
end

puts mReverse('My name is sarpong')

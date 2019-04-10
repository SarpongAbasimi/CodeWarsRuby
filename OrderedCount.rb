=begin
Count the number of occurrences of each character and return it as a list of tuples in order of appearance.
=end

def ordered_count(str)
  hash = Hash.new
  str_split = str.split('')
  str_split.each do |x|
    hash[x] == nil ? hash[x] = 1 : hash[x] += 1
  end
  hash.to_a
end


#test
describe "Solution" do
  it "should work for static examples" do
    Test.assert_equals(ordered_count("abracadabra"), [['a', 5], ['b', 2], ['r', 2], ['c', 1], ['d', 1]])
    Test.assert_equals(ordered_count("Code Wars"), [['C', 1], ['o', 1], ['d', 1], ['e', 1], [' ', 1], ['W', 1], ['a', 1], ['r', 1], ['s', 1]])
  end
end


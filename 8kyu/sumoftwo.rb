class Solution
  def two_sum(nums, target)
    dict = Hash.new
    nums.each do | x |
      complement = target - x
      if dict.key?(complement)
        return [dict[complement], nums.index(x)]
      else
        dict[x] = nums.index(x)
      end
    end
  end
end
class TwoSum
  def self.get_two_sum(nums, target)
    hash = {nums[0] => 0}

    (1..nums.size-1).each do |i|
      if hash.key?(target - nums[i])
        return [hash[target-nums[i]], i]
      else
        hash[nums[i]] = i
      end
    end

    [0,0]
  end
end

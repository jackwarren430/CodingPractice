require 'set'

class IntersectionNArrs

  def self.find_intersection(*nums)
    hash = {}
    nums.each do |arr|
      set = Set.new
      arr.each do |num|
        if !set.include? num
          hash[num] = 0 if !hash[num]
          hash[num] = hash[num] + 1
          set.add num
        end
      end
    end
    toReturn = []
    hash.keys.each do |num|
      toReturn << num if hash[num] == nums.size
    end
    toReturn
  end

end

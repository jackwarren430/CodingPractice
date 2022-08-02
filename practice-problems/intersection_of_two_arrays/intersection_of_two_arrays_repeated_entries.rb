class IntersectionRepeating

  def self.find_intersection(nums1, nums2)
    hash = {}
    nums1.each do |i|
      hash[i] = [0, 0] if !hash[i]
      hash[i][0] = hash[i][0] + 1 if hash[i]
    end
    nums2.each do |i|
      hash[i][1] = hash[i][1] + 1 if hash[i]
    end
    toReturn = []
    hash.keys.each do |k|
      (0...hash[k].min).each { |m| toReturn << k }
    end
    toReturn
  end

end

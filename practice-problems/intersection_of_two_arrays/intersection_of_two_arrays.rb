class Intersection

  def self.find_intersection(nums1, nums2)
    hash = {}
    nums1.each do |i|
      hash[i] = 0 if !hash[i]
    end
    toReturn = []
    nums2.each do |i|
      if hash[i] == 0
        toReturn << i
        hash[i] = 1
      end
    end
    toReturn
  end

end

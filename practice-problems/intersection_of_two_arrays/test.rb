require_relative './intersection_of_two_arrays.rb'

nums1 = [
  1,
  6,
  3,
  7,
  4,
  6,
  2
]

nums2 = [
  7,
  3,
  7,
  2,
  8
]

inter = Intersection.find_intersection(nums1, nums2)

puts "Intersection of nums1 and nums2:\n"
puts "\nnums1:\n#{nums1}"
puts "\nnums2:\n#{nums2}"
puts "\nintersection:\n#{inter}"


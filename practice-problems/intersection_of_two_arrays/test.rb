require_relative './intersection_of_two_arrays.rb'
require_relative './intersection_of_two_arrays_repeated_entries.rb'

nums1 = [
  1,
  6,
  15,
  3,
  7,
  4,
  7,
  15,
  15,
  6,
  2,
  7
]

nums2 = [
  15,
  7,
  15,
  3,
  7,
  15,
  15,
  2,
  8
]

inter = Intersection.find_intersection(nums1, nums2)

puts "Intersection of nums1 and nums2:\n"
puts "\nnums1:\n#{nums1}"
puts "\nnums2:\n#{nums2}"
puts "\nintersection:\n#{inter}"

inter_repeating = IntersectionRepeating.find_intersection(nums1, nums2)

puts "\nIntersection of nums1 and nums2 including repeating values:\n"
puts "#{inter_repeating}"

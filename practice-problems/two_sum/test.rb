require_relative './two_sum.rb'

nums = [6, 2]
target = 8

result = TwoSum.get_two_sum(nums, target)

puts "\n------Test 1------\n"
puts "Integer array: #{nums}"
puts "Target: #{target}"
puts "\nResult: #{result}"

nums = [5, 3, 10, 6, 4, 9]
target = 7

result = TwoSum.get_two_sum(nums, target)

puts "\n------Test 2------\n"
puts "Integer array: #{nums}"
puts "Target: #{target}"
puts "\nResult: #{result}"

nums = [5, -2, -9, 8, 3, -7, 2]
target = -2

result = TwoSum.get_two_sum(nums, target)

puts "\n------Test 3------\n"
puts "Integer array: #{nums}"
puts "Target: #{target}"
puts "\nResult: #{result}"






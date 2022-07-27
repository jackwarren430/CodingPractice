require '~/Documents/Programming/CodingPractice/practice-problems/reverse-linked-list/lib/Node.rb'

root = Node.new(1)

root.add(2)
root.add(3)
root.add(4)
root.add(5)
root.add(6)
root.add(7)
root.add(8)

puts "=" * 10 + "first list"
Node.print_list(root)

root = root.delete(1)

puts "=" * 10 + "removed 1"
Node.print_list(root)

root = root.delete(6)

puts "=" * 10 + "removed 6"
Node.print_list(root)

root = root.delete(8)

puts "=" * 10 + "removed 8"
Node.print_list(root)

puts "=" * 10 + "reversed linked list"
root = Node.reverse_list(root)
Node.print_list(root)

root2 = Node.new(1)
root2.add(2)

puts "=" * 10 + "new list"
Node.print_list(root2)

puts "=" * 10 + "reversed"
root2 = Node.reverse_list(root2)
Node.print_list(root2)

puts "=" * 10 + "removed 2"
root2 = root2.delete(2)
Node.print_list(root2)

puts "=" * 10 + "reversed again"
root2 = Node.reverse_list(root2)
Node.print_list(root2)

puts "=" * 10 + "removed 1"
root2 = root2.delete(1)
Node.print_list(root2)

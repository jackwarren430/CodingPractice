class Node

  attr_accessor :next, :data

  def initialize(val)
    @data = val
    @next = nil
  end

  def add(data)
    if !@next
      @next = Node.new(data) if !@next
      return
    end
    curr = @next
    while curr.next
      curr = curr.next
    end
    curr.next = Node.new(data)
  end

  def delete(data)
    if @data == data
      return @next if @next
      @data = nil
      return self
    end
    curr = self
    while curr.next
      if curr.next.data == data
        if curr.next.next
          curr.next = curr.next.next
          return self
        else
          curr.next = nil
          return self
        end
      end
      curr = curr.next
    end
    puts "#{data} is not in this list"
    return self
  end

  def self.reverse_list(root)
    toReturn = get_next(root)[1]
    root.next = nil
    toReturn
  end

  def self.get_next(node)
    if !node.next
      return [node, node]
    end
    got = get_next(node.next)
    got[0].next = node
    got[0] = node
    return got
  end

  def self.print_list(root)
    toReturn = ""
    curr = root
    while curr
      toReturn += "#{curr.data}\n"
      curr = curr.next
    end
    puts toReturn
  end

end

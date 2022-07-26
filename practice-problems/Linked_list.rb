require './Node.rb'

class Linked_list
  def initialize(val)
    @root = Node.new(val)
  end

  def append(data)
    curr = @root
    while curr.getNext
      curr = curr.getNext
    end
    toAdd = Node.new(data)
    curr.setNext(toAdd)
  end

  def pop
    if !@root.getNext
      puts "Cannot remove any more"
      return
    end
    curr = @root
    while curr.getNext
      curr = curr.getNext
    end
    curr.setNext
  end
end

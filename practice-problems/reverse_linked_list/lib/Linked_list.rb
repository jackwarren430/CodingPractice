require './lib/Node.rb'

class Linked_list

  attr_reader :@root

  def initialize
    @root = Node.new(nil)
  end

  def append(data)
    curr = @root
    while curr.getNext
      curr = curr.getNext
    end
    toAdd = Node.new(data)
    curr.setNext(toAdd)
    toAdd
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
    curr.setNext(nil)
  end

  def to_s
    toReturn = ""
    curr = @root.getNext
    while curr != nil
      toReturn += "#{curr.getData}, "
      curr = curr.getNext
    end
    toReturn
  end

end



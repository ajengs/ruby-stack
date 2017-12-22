require './stack'

class CustomQueue < Stack
  def enqueue(element)
    unless overflow?
      @elements.push(element)
    else
      "queue overflow, can't add new element"
    end
  end

  def dequeue
    unless underflow?
      @elements.shift
    else
      "queue underflow, can't remove any element"
    end
  end

  def head
    @elements.first
  end

  def tail
    @elements.last
  end

  private
    def overflow?
      @elements.size >= @size
    end

    def underflow?
      @elements.empty?
    end
end

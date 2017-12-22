class Stack
  attr_accessor :size, :elements

  def initialize(size)
    @size = size
    @elements = []
  end

  def to_s
    "size: #{@size}, elements: #{@elements}"
  end

  def push(n)
    if @elements.size < @size
      @elements.push(n)
    else
      "stack overflow, can't add new element"
    end
  end

  def pop
    if !@elements.empty?
      @elements.pop
    else
      "stack underflow, can't remove any element"
    end
  end

  def look
    @elements.last
  end
end

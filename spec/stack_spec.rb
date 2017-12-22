require_relative '../stack.rb'

describe "Stack" do
  let(:s) { Stack.new(4) }

  it "should be able to be initialized with a size" do
    expect(s.class.name).to eq("Stack")
  end

  it "should have size" do
    expect(s.size).to eq(4)
  end

  it "should have elements" do
    expect(s.elements).to eq([])
  end

  it "should show the size and the elements of the Stack when printed" do
    expect(s.to_s).to eq("size: 4, elements: []")
  end

  describe "push" do
    context "with normal state" do
      it "should be able to add new element with push method" do
        s.push(1)
        expect(s.to_s).to eq("size: 4, elements: [1]")
      end
    end

    context "with overflow state" do
      it "should not be able to add new element with push method" do
        s.push(1)
        s.push(2)
        s.push(3)
        s.push(4)
        expect(s.push(5)).to eq("stack overflow, can't add new element")
      end
    end
  end

  describe "pop" do
    context "with normal state" do
      before :each do
        s.push(1)
        s.push(2)
        s.push(3)
        s.push(4)
      end

      it "should be able to remove an element with pop method" do
        expect(s.pop).to eq(4)
      end

      it "should be able to remove an element with pop method" do
        s.pop
        expect(s.to_s).to eq("size: 4, elements: [1, 2, 3]")
      end
    end

    context "with underflow state" do
      it "should not be able to remove any element with pop method" do
        expect(s.pop).to eq("stack underflow, can't remove any element")
      end
    end
  end

  describe "look" do
    before :each do
      s.push(1)
      s.push(2)
      s.push(3)
      s.push(4)
    end

    it "shold be able to look up the top element" do
      expect(s.look).to eq(4)
    end

    it "shold be able to look up the top element without removing it from the stack" do
      s.look
      expect(s.to_s).to eq("size: 4, elements: [1, 2, 3, 4]")
    end
  end
end
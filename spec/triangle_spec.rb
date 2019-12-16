require 'rspec'
require 'triangle'

describe '#Triangle' do

  describe('#equalateral') do
    it("determines if 3 user inputs are an equalateral triangle") do
      new1 = Triangle.new(5,5,5)
      expect(new1.equalateral?).to(eq(true))
    end
  end

  describe('#isosceles') do
    it("determines if 3 user inputs are an isosceles triangle") do
      new1 = Triangle.new(4,5,5)
      expect(new1.isosceles?).to(eq(true))
    end
  end

  describe('#scalene') do
    it("determines if 3 user inputs are an scalene triangle") do
      new1 = Triangle.new(4,5,3)
      expect(new1.scalene?).to(eq(true))
    end

  end
  describe('#scalene') do
    it("determines if 3 user inputs are a triangle") do
      new1 = Triangle.new(4,5,20)
      expect(new1.is_not_triangle?).to(eq(true))
    end
  end

  describe('#equalateral') do
    describe('#tests to see if the logic branching in the triangle_type function is wired correctly')
    it("determines if 3 user inputs are an equalateral triangle") do
      new2 = Triangle.new(5,5,5)
      expect(new2.triangle_type).to(eq("This is equalateral"))
    end
  end
  describe('#isoseles') do
    describe('#tests to see if the logic branching in the triangle_type function is wired correctly')
    it("determines if 3 user inputs are an isoselels triangle") do
      new2 = Triangle.new(5,5,4)
      expect(new2.triangle_type).to(eq("This is isosceles"))
    end
  end
  describe('#scalene') do
    describe('#tests to see if the logic branching in the triangle_type function is wired correctly')
    it("determines if 3 user inputs are an scalene triangle") do
      new2 = Triangle.new(6,5,4)
      expect(new2.triangle_type).to(eq("This is scalene"))
    end
  end
  describe('#not a triangle') do
    describe('#tests to see if the logic branching in the triangle_type function is wired correctly')
    it("determines if 3 user inputs are not a triangle") do
      new2 = Triangle.new(6,5,48)
      expect(new2.triangle_type).to(eq("This isn't a triangle"))
    end
  end
end

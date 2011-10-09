require "rspec"
require "./calculon"

describe "Calculon" do

  before(:each) do
    @calculon = Calculon.new
  end

  it "should add a number and return the result" do
    result = @calculon.add 6
    result = @calculon.add 2
    result.should == 8
  end

  it "should subtract a number from the total" do
    result = @calculon.add 4
    result = @calculon.subtract 2
    result.should == 2
  end

  it "should return keep running total" do
    result = @calculon.add 4
    @calculon.total.should == 4

    result = @calculon.subtract 3
    @calculon.total.should == 1
  end

  it "should clear the total" do
    result = @calculon.add 4
    @calculon.clear
    @calculon.total.should == 0
  end

  it "should evaluate a string addiction" do
    result = @calculon.eve "4 + 2"
    result.should == 6
  end

  it "should evaluate a string subtraction" do
    result = @calculon.eve "4 - 1"
    result.should == 3
  end

  it "should evaluate a combination of subtractions and addictions" do
    result = @calculon.eve "4 + 2 - 1"
    result.should == 5
  end

  it "should raise an error if the expression contains invalid operations" do
    expect do
      @calculon.eve "2 * 4"
    end.to raise_error(ArgumentError)
  end

  it "should raise an error if the expression contains invalid characters" do
    expect do
      @calculon.eve "2 + a"
    end.to raise_error(ArgumentError)

    expect do
      @calculon.eve "2 = 2"
    end.to raise_error(ArgumentError)

    expect do
      @calculon.eve "2 \t + 2"
    end.to raise_error(ArgumentError)
  end

end
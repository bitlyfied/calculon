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

end
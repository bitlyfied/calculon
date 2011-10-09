require "rspec"
require "./calculon"

describe "Calculon" do

  before(:each) do
    @calculon = Calculon.new
  end

  it "should add two numbers" do
    result = @calculon.add 2, 6
    result.should == 8
  end
end
require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Productivity::Good do
  it "should build an object with the given :name parameter" do
    good = Productivity::Good.new :name => "MyGood"
    good.name.should eq("MyGood")
  end

  it "should build an object with the given :version parameter" do
    good = Productivity::Good.new :version => "0.2"
    good.version.should eq("0.2")
  end

  it "should build an object with the given :factors parameters" do
    a = Productivity::Good.new :name => "A"
    b = Productivity::Good.new :name => "B"
    good = Productivity::Good.new :factors => [a,b]
    good.factors.should eq([a,b])
  end

  it "should build an object with the given :id parameter" do
    good = Productivity::Good.new :id => "12300"
    good.id.should eq("12300")
  end

  it "should build an object with the default values when given no parameters" do
    good = Productivity::Good.new
    good.name.should eq("")
    good.version.should eq("")
    good.id.should_not be_empty
    good.factors.should be_empty
  end
end
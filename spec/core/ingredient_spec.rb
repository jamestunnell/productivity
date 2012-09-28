require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Productivity::Ingredient do
  it "should build an object with the given :name parameter" do
    good = Productivity::Ingredient.new :name => "MyGood"
    good.name.should eq("MyGood")
  end

  it "should build an object with the given :amount parameter" do
    good = Productivity::Ingredient.new :amount => 2
    good.amount.should be 2
  end

  it "should build an object with default values when no parameters are given" do
    good = Productivity::Ingredient.new
    good.name.should be_empty
    good.amount.should be 0
  end
end
require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Productivity::Recipe do
  it "should build an object with default values when no parameters are given" do
    good = Productivity::Recipe.new
    good.result.should be_empty
    good.ingredients.should be_empty
    good.directions.should be_empty
  end

  it "should build an object with the given :result parameter" do
    good = Productivity::Recipe.new :result => "MyGood"
    good.result.should eq("MyGood")
  end

  it "should build an object with the given :ingredients parameter" do
    good = Productivity::Recipe.new :ingredients => ["MyGood1", "MyGood2"]
    good.ingredients.should eq(["MyGood1", "MyGood2"])
  end

  it "should build an object with the given :directions parameter" do
    good = Productivity::Recipe.new :directions => ["do this first", "do this next"]
    good.directions.should eq(["do this first", "do this next"])
  end

end
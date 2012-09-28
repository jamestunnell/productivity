require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Productivity::Producer do
  it "should build an object with default values when no parameters are given" do
    x = Productivity::Producer.new
    x.recipe.result.should be_empty
    x.recipe.ingredients.should be_empty
    x.recipe.directions.should be_empty
    
    x.source_inventory.should be_empty
    x.target_inventory.should be_empty
  end

  it "should build an object with the given :recipe parameter" do
    x = Productivity::Producer.new :recipe => Recipe.new({:result => "MyGood", :ingredients => {"part A" => 1}})
    x.recipe.result.should eq("MyGood")
    x.recipe.ingredients["part A"].should be 1
  end

  it "should build an object with the given :source_inventory parameter" do
    inventory = {"MyGood" => 3, "MyGood2" => 5}
    
    x = Productivity::Producer.new :source_inventory => inventory
    x.source_inventory.should eq(inventory)
  end

  it "should build an object with the given :target_inventory parameter" do
    inventory = {"MyGood" => 3, "MyGood2" => 5}
    
    x = Productivity::Producer.new :target_inventory => inventory
    x.target_inventory.should eq(inventory)
  end

end
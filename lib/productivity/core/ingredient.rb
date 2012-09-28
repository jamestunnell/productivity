module Productivity

class Ingredient
  attr_accessor :name, :amount
  
  def initialize args = {}
    @name = args[:name] || ""
    @amount = args[:amount] || 0
  end
end

end
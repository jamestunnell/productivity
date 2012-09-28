module Productivity

class Recipe
  attr_accessor :ingredients, :directions, :result
  
  def initialize args = {}
    @ingredients = args[:ingredients] || []
    @directions = args[:directions] || []
    @result = args[:result] || ""
  end
end

end
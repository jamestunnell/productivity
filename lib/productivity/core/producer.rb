module Productivity

class Producer
  attr_accessor :recipe, :source_inventory, :target_inventory

  def initialize args = {}
    @recipe = args[:recipe] || Recipe.new
    raise ArgumentError, "args[:recipe] is not a Recipe" if !@recipe.is_a?(Recipe)
    
    @source_inventory = args[:source_inventory] || {}
    raise ArgumentError, "args[:source_inventory] is not a Hash" if !@source_inventory.is_a?(Hash)
    
    @target_inventory = args[:target_inventory] || {}
    raise ArgumentError, "args[:target_inventory] is not a Hash" if !@target_inventory.is_a?(Hash)
  end
  
  def can_produce? units = 1
    rv = @recipe.is_valid?
    
    if rv
      #make sure our supplies are sufficient
      @recipe.ingredients.each do |ingredient|
        supply = @source_inventory[ingredient.name]
        
        if supply.nil?
          rv = false
        elsif supply < (ingredient.amount * units)
          rv = false
        end
        
        break if !rv
      end
    end
    
    return rv
  end
end

end
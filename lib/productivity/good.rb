require 'securerandom'

module Productivity

class Good
  @attr_accessor :name, :version, :id, :ancestors
  
  def initialize args
    @name = args[:name] || ""
    @version = args[:version] || 0
    @id = args[:id] || SecureRandom.uuid
    @ancestors = args[:ancestors] || []
  end
end

end
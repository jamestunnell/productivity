require 'securerandom'

module Productivity

class Good
  attr_accessor :name, :version, :id, :factors

  def initialize args={}
    @name = args[:name] || ""
    @version = args[:version] || ""
    @id = args[:id] || SecureRandom.uuid
    @factors = args[:factors] || []
  end
end

end
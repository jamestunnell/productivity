module Productivity
  UNIT_ABBREVIATIONS_TO_UNITWISE_STRINGS =
  {
    # US distance
    :inches => "inch",
    :feet => "foot",
    :yards => "yard",
    :miles => "mile",

    # metric distance
    :mm => "millimeter",
    :cm => "centimeter",
    :m => "meter",
    :km => "kilometer",

    # time
    :seconds => "second",
    :minutes => "minute",
    :hours => "hour",
    :days => "day",
    :weeks => "week",
    :months => "month",
    :years => "year",

    # rates
    :mph => "mile/hour",

  }
end

class Numeric
  def self.add_unitwise_method method, unitwise_str
    define_method method do
      Unitwise(self, unitwise_str)
    end
  end

  Productivity::UNIT_ABBREVIATIONS_TO_UNITWISE_STRINGS.each do |unit_abbrev, unitwise_str|
    self.add_unitwise_method(unit_abbrev, unitwise_str)
  end

end

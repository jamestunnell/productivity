require File.expand_path(File.join(File.dirname(__FILE__),'spec_helper'))

describe Numeric do
  UNIT_ABBREVIATIONS_TO_UNITWISE_STRINGS.each do |unit_abbrev, unitwise_str|
    describe unit_abbrev do
      it 'should be a method' do
        1.should respond_to unit_abbrev
      end

      it 'should return a Unitwise::Measurement object' do
        1.send(unit_abbrev.to_sym).should be_a(Unitwise::Measurement)
      end

      it 'should return measurement with expected value and unit' do
        [ 1, -1, 25.2, 6000 ].each do |x|
          measurement = x.send(unit_abbrev.to_sym)
          measurement.value.should eq(x)
          measurement.unit.to_s.should eq(unitwise_str)
        end
      end
    end
  end
end

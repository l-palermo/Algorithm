require './src/measuringAlgo'

RSpec.describe MeasuringAlgo, '#time' do
  it 'measure the execution time of the algo' do
    measuringAlgo = MeasuringAlgo.new
    expect(measuringAlgo.time)
  end
end
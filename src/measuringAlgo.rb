# require 'ruby-graphviz'
require 'ruby-prof'

class MeasuringAlgo

  def initialize
    @array = []
  end

  def createArray
    x = 0
    while x < 10000000 do
      x += 1
      y = rand(1..100)
      @array << y
    end
    return @array
  end

  def time

    #GraphViz::new( :G, :type => :digraph ) { |g|
   # g.world( :label => "World" ) << g.hello( :label => "Hello" )
  #}.output( :png => "hello_world.png" )

    arrayToMeasure = createArray
    RubyProf.start
    arrayToMeasure.sort
    result = RubyProf.stop
    File.open "C:/Users/Luigi/Desktop/Makers/Desktop/projects/Algorithm/graph.html", "w+" do |file|
      RubyProf::GraphHtmlPrinter.new(result).print(file)
    end

    # printer = RubyProf::GraphPrinter.new(result)
    # printer.print(STDOUT)

    # formerTime = Time.now
    #arrayToMeasure.sort
    # laterTime = Time.now
    # p laterTime - formerTime
  end
end
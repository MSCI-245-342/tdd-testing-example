require_relative 'stat_functions'

module TestingExample
  class Runner

    def initialize( argv )
      @argv = argv
    end

    def run
      puts StatFunctions.median(@argv)
    end

  end


end

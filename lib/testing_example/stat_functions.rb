module TestingExample

  class StatFunctions

    def self.median( values )
      if values.nil? || values.length == 0
         raise ArgumentError.new( "median requires an array with 1 or more elements")
      end

      if values.length == 1 
        return values[0]
      end

      values = values.sort

      if values.length.even?
         left_of_mid = (values.length / 2) - 1
         result = (values[left_of_mid] + values[left_of_mid + 1]) / 2.0
         return result
      else
         mid = (values.length / 2)
         return values[mid]
      end

    end

  end

end

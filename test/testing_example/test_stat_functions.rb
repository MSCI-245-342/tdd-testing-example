require 'minitest/autorun'
require 'byebug'

require 'testing_example/stat_functions'

class TestStatFunctions < Minitest::Test

  def test_median_one_element
    # arrange
    elements = [1]

    # act
    result = TestingExample::StatFunctions.median( elements )

    # assert
    assert_equal( 1, result )

  end

  def test_median_two_elements_float
    elements = [2.1,1.5]
    avg = (elements[0] + elements[1])/2.0
    result = TestingExample::StatFunctions.median( elements )
    assert_in_delta( avg, result )
  end

  def test_median_two_elements
    elements = [2,1]
    result = TestingExample::StatFunctions.median( elements )
    assert_in_delta( 1.5, result )
  end

  def test_median_three_elements
    elements = [2,1,3]
    result = TestingExample::StatFunctions.median( elements )
    assert_equal( 2, result )
  end

  def test_median_zero_elements
    elements = []
    assert_raises( ArgumentError ) do
      result = TestingExample::StatFunctions.median( elements )
    end
  end

  def test_median_nil
    elements = nil
    assert_raises( ArgumentError ) do
      result = TestingExample::StatFunctions.median( elements )
    end
  end

end

require './test/test_helper'
require './lib/round'

class RoundTest < Minitest::Test

  def setup
    @round_1 = Round.new('RRGB', 'GRRB')
    @round_2 = Round.new('RYYY', 'GRRB')
    @round_3 = Round.new('GRRB', 'GRRB')
  end

  def test_it_has_attributes
    @guess = 'RRGB'
    @code  = 'GRRB'
  end

  def test_it_can_calculate_the_number_of_correct_elements
    assert_equal 4, @round_1.correct_elements
    assert_equal 1, @round_2.correct_elements
  end

  def test_it_can_calculate_the_number_of
    assert_equal 2, @round_1.correct_positions
    assert_equal 0, @round_2.correct_positions
  end

  def test_it_can_tell_if_guess_was_correct
    assert_equal false, @round_1.correct?
    assert_equal false, @round_2.correct?
    assert_equal true, @round_3.correct?
  end

end
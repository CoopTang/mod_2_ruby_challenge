require './test/test_helper'
require './lib/secret'

class SecretTest < Minitest::Test

  def setup
    @secret = Secret.new
  end

  def test_it_has_attributes
    colors     = ['R', 'B', 'G', 'Y', 'C', 'M']
    num_colors = 4
    num_chars  = 4
    assert_equal num_colors, @secret.num_colors
    assert_equal num_chars, @secret.num_chars
    @secret.code.chars.each do |char|
      assert_equal true, colors[0..3].include?(char)
    end
  end

end
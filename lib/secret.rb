class Secret
  attr_reader :num_colors, :num_chars, :code

  def initialize(num_colors = 4, num_chars = 4)
    @COLORS = ['R', 'B', 'G', 'Y', 'C', 'M']
    @num_colors = num_colors
    @num_chars  = num_chars
    @code       = ""
    generate_code
  end

  private 
  def generate_code
    @code = ""
    @num_chars.times do
      @code << @COLORS[rand(@num_colors)]
    end
  end
end
class Round
  attr_reader :guess, :code, :correct_elements, :correct_positions

  def initialize(guess, code)
    @guess = guess
    @code  = code
    @correct_elements = calculate_correct_elements
    @correct_positions = calculate_correct_positions
  end

  def correct?
    @code == @guess
  end

  private

  def calculate_correct_elements
    total = 0
    code = @code.chars
    @guess.chars.each do |char|
      index = code.find_index(char)
      if index
        total += 1
        code.delete_at(index)
      end
    end
    total
  end

  def calculate_correct_positions
    total = 0
    @guess.chars.each_index do |i|
      total += 1 if @guess[i] == @code[i]
    end
    total
  end
end
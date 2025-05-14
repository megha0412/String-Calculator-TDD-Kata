class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?
    return numbers.to_i if !numbers.include?(",")
    numbers = numbers.gsub("\n", ",")
    numbers.split(",").map(&:to_i).sum
  end
end
class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?

    pattern = /,|\n/

    if numbers.start_with?("//")
      header, numbers = numbers.split("\n", 2)

      if header.include?("[")
        delimiters = header.scan(/\[(.*?)\]/).flatten
        pattern = Regexp.union(delimiters.map { |d| Regexp.escape(d) })
      else
        pattern = Regexp.escape(header[2])
      end
    end

    nums = numbers.split(pattern).map(&:to_i)
    negatives = nums.select { |n| n < 0 }
    raise "Negatives not allowed: #{negatives.join(', ')}" if negatives.any?

    nums.reject { |n| n > 1000 }.sum
  end
end
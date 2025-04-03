class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?

    delimiter, numbers = get_delimiter(numbers)
    num_array = numbers.split(/#{delimiter}|\n/).map(&:to_i)

    check_negatives(num_array)
    num_array.sum
  end

  private

  def self.get_delimiter(numbers)
    if numbers.start_with?("//")
      delimiter_section, numbers = numbers.split("\n", 2)
      delimiter = delimiter_section[2..].tr("[]", "") # Supports multi-character delimiters
    else
      delimiter = ","
    end
    [Regexp.escape(delimiter), numbers]
  end

  def self.check_negatives(numbers)
    negatives = numbers.select { |n| n < 0 }
    raise "Negatives not allowed: #{negatives.join(', ')}" if negatives.any?
  end
end

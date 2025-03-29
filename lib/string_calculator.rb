class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?

    if numbers.start_with?("//")
      delimiter = numbers[2]
      numbers = numbers[4..-1]
    else
      delimiter = ','
    end

    num_array = numbers.split(/#{delimiter}|\n/).map(&:to_i)
    negatives = num_array.select { |num| num < 0 }

    raise "Negatives not allowed: #{negatives.join(', ')}" if negatives.any?

    num_array.sum
  end
end

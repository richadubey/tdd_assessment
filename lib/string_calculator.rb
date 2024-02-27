class StringCalculator
  def self.add(numbers)
    if numbers.start_with?("//")
      delimiter = numbers[2]
      numbers = numbers[4..-1]
    else
      delimiter = ','
    end

    # Modify the regular expression to split by either the custom delimiter or a newline character
    numbers = numbers.to_s.gsub('"', '').split(/#{delimiter}|,|\n/).map(&:to_i)
    negatives = numbers.select { |num| num < 0 }

    if negatives.any?
      puts "Negatives not allowed: #{negatives.join(', ')}"
    else
      puts "Checking numbers: #{numbers}"
      puts numbers.sum
    end
  end
end

puts "Please enter string:"
user_input = gets.chomp
StringCalculator.add(user_input)

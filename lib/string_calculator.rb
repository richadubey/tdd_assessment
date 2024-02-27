class StringCalculator
  def self.add(numbers)
    if numbers.start_with?("//")
      delimiter = numbers[2]
      numbers = numbers[4..-1]
    else
      delimiter = ','
    end

    numbers = numbers.to_s.gsub('"', '').split(/#{delimiter}|,|\n/).map(&:to_i)
    negatives = numbers.select { |num| num < 0 }

    if negatives.any?
      puts "Negatives not allowed: #{negatives.join(', ')}"
    else
      puts numbers.sum
    end
  end
end

puts "Please enter string:"
user_input = gets.chomp
StringCalculator.add(user_input)
StringCalculator.add("1\n2,3")

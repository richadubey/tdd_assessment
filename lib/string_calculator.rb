
class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty? || numbers.nil?
    puts numbers
    numbers = numbers.split(",").map(&:to_i)
    puts "Checking number #{numbers}"
    puts numbers.sum
  end
end
puts "Please enter string:"

user_input = gets.chomp
StringCalculator.add(user_input)

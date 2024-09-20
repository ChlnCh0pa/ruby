# Метод для нахождения количества нечетных цифр числа, больших 3
def odd_digits_greater_than_3_count(n)
count = 0
n.to_s.chars.each do |digit|
d = digit.to_i
if d.odd? && d > 3
count += 1
end
end
count
end


puts "введи число"
number = gets.to_i
puts "Количество нечетных цифр числа #{number}, больших 3: #{odd_digits_greater_than_3_count(number)}"

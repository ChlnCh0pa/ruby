# Метод для нахождения суммы цифр числа
def sum_of_digits(num)
sum = 0
num.to_s.chars.each do |digit|
sum += digit.to_i
end
sum
end

# Метод для нахождения произведения таких делителей числа, сумма цифр которых меньше, чем сумма цифр исходного числа
def product_of_special_divisors(n)
sum_digits_of_n = sum_of_digits(n)
product = 1
has_divisors = false

(1..n).each do |i|
if n % i == 0 && sum_of_digits(i) < sum_digits_of_n
product *= i
has_divisors = true
end
end

has_divisors ? product : 0
end


puts "введи число"
number = gets.to_i
puts "Произведение делителей числа #{number}, сумма цифр которых меньше, чем сумма цифр исходного числа: #{product_of_special_divisors(number)}"
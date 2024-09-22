# Метод для проверки, является ли число простым
def prime?(num)
return false if num < 2
(2..Math.sqrt(num)).each do |i|
return false if num % i == 0
end
true
end

# Метод для нахождения суммы простых делителей числа
def sum_of_prime_divisors(n)
sum = 0
(2..n).each do |i|
if n % i == 0 && prime?(i)
sum += i
end
end
sum
end

puts "введи число"
number = gets.to_i
puts "Сумма простых делителей числа #{number}: #{sum_of_prime_divisors(number)}"
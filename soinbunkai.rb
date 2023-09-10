def prime_factors(n)
  factors = {}
  divisor = 2

  while n > 1
    if n % divisor == 0
      factors[divisor] ||= 0
      factors[divisor] += 1
      n /= divisor
    else
      divisor += 1
    end
  end

  return factors
end

# この関数を使って素因数分解を行う例
number = 36 # 素因数分解したい整数
factors = prime_factors(number)
puts "#{number}の素因数分解結果:"

factors.each do |factor, exponent|
  puts "#{factor}^#{exponent}"
end
#最大公約数
def gcd(a, b)
  while b != 0
    a, b = b, a % b
  end
  return a
end

# 例として2つの整数のGCDを計算
num1 = 48
num2 = 18
result = gcd(num1, num2)
puts "最大公約数は #{result}"



# GCDを求める関数（前の回答で示した関数を使用）
def gcd(a, b)
  while b != 0
    a, b = b, a % b
  end
  return a
end

# LCMを求める関数
def lcm(a, b)
  return (a * b) / gcd(a, b)
end

# 例として2つの整数のLCMを計算
num1 = 12
num2 = 18
result = lcm(num1, num2)
puts "最小公倍数は #{result}"


def gcd_of_numbers(numbers)
  numbers.reduce { |gcd, num| gcd.gcd(num) }
end

# 数の配列を定義
numbers = [24, 36, 48, 60]

# 配列内の数の最大公約数を計算
result = gcd_of_numbers(numbers)

# 結果を表示
puts "配列内の数の最大公約数: #{result}"


# 最小公倍数を計算するメソッドを定義
def lcm_of_numbers(numbers)
  numbers.reduce(1) { |lcm, num| lcm.lcm(num) }
end

# 数の配列を定義
numbers = [4, 6, 8, 12]

# 配列内の数の最小公倍数を計算
result = lcm_of_numbers(numbers)

# 結果を表示
puts "配列内の数の最小公倍数: #{result}"
# 拡張ユークリッドの互除法を使用して、一次不定方程式 ax + by = gcd(a, b) の整数解を求める関数
def extended_gcd(a, b)
  return [1, 0, a] if b == 0

  x1, y1, gcd = extended_gcd(b, a % b)
  x = y1
  y = x1 - (a / b) * y1

  [x, y, gcd]
end

# 一次不定方程式 ax + by = gcd(a, b) の整数解を求める関数
def solve_linear_diophantine_equation(a, b, c)
  x, y, gcd = extended_gcd(a, b)

  if c % gcd == 0
    # 方程式の解が存在する場合
    x *= c / gcd
    y *= c / gcd
    [x, y]
  else
    # 方程式の解が存在しない場合
    nil
  end
end

# 例: 10x + 6y = gcd(10, 6) の整数解を求める
a = 10
b = 9
c = a.gcd(b) # gcd(10, 6) = 2
solution = solve_linear_diophantine_equation(a, b, c)

if solution
  puts "a = #{a}, b = #{b}, c = #{c} の場合の解は x = #{solution[0]}, y = #{solution[1]} です。"
else
  puts "解が存在しません。"
end
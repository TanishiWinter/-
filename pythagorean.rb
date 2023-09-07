#ピタゴラスの定理
def pythagorean_theorem(a, b)
  c_squared = a**2 + b**2
  c = Math.sqrt(c_squared)
  return c
end

# 例: a = 3, b = 4 の場合
a = 3
b = 4
c = pythagorean_theorem(a, b)
puts "a = #{a}, b = #{b} のとき、c = #{c}"
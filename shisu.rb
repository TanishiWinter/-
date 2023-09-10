def calculate_power(base, exponent)
  result = 1

  # 指定された指数回だけベースを掛け合わせる
  exponent.times do
    result *= base
  end

  return result
end

# この関数を使ってべき乗を計算する例
base = 2     # ベースとなる数
exponent = 3 # 指数
result = calculate_power(base, exponent)
puts "#{base}の#{exponent}乗は#{result}です。"
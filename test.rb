# 指定番のフィボナッチ数を求めるメソッドを定義
def fibonacci(num)
  # 再帰終了条件
  if num == 0
    return 0
  # 再帰終了条件
  elsif num == 1
    return 1
  else
    # 再帰呼び出し
    fibonacci(num - 1) + fibonacci(num - 2)
  end
end

# 第 0 項から第 9 項までを出力
(0..9).each do |i|
  puts "第 #{i} 項： #{fibonacci(i)}"
end


def tribonacci(n)
  if n == 0
    return 0
  elsif n == 1 || n == 2
    return 1
  end

  tribonacci_array = [0, 1, 1]

  (3..n).each do |i|
    tribonacci_array << tribonacci_array[i - 1] + tribonacci_array[i - 2] + tribonacci_array[i - 3]
  end

  return tribonacci_array[n]
end

# トリボナッチ数列の任意の要素を計算する例
n = 20  # 任意のnに変更できます
result = tribonacci(n)
puts "T(#{n}) = #{result}"
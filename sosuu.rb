# 素数判定関数
def is_prime?(n)
  if n <= 1
    return false # 1以下の数は素数ではありません
  elsif n <= 3
    return true # 2と3は素数です
  elsif n % 2 == 0 || n % 3 == 0
    return false # 2と3以外の偶数または3の倍数は素数ではありません
  end

  i = 5
  while i * i <= n
    if n % i == 0 || n % (i + 2) == 0
      return false # nがiまたはi+2で割り切れる場合、素数ではありません
    end
    i += 6
  end

  return true # 上記の条件を満たさない場合、nは素数です
end

# 素数判定の例
puts is_prime?(11) # true
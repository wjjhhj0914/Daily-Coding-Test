func solution(_ num: Int) -> Int {
  // 입력값이 1인 경우 바로 0 반환
  if num == 1 { return 0 }

  // 계산 과정에서 숫자가 커질 수 있으므로 Int64로 변환 (오버플로우 방지!)
  var n = Int64(num)
  var count = 0

  // n이 1이 아닐
  while n != 1 {
    // 1. 홀짝 판별 및 계산
    if n % 2 == 0 {
      n /= 2
    } else {
      n = n * 3 + 1
    }

    count += 1

    if count >= 500 {
      return -1
    }
  }

  return count
}
import Foundation

func solution(_ left: Int, _ right: Int) -> Int {
  var answer = 0

  for num in left...right {
    var count = 0

    // 1부터 num까지 나누어 떨어지는 수(약수)를 찾는다.
    for i in 1...num {
      if num % i == 0 {
        count += 1
      }
    }

    // 약수의 개수에 따라 더하거나 뺀다.
    if count % 2 == 0 {
      answer += num
    } else {
      answer -= num
    }
  }

  return answer
}
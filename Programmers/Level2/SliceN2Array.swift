import Foundation

func solution(_ n: Int, _ left: Int64, _ right: Int64) -> [Int] {

  var result: [Int] = []

  for i in left...right {
    let row = Int(i / Int64(n))
    let col = Int(i % Int64(n))

    let value = max(row, col) + 1
    result.append(value)
  }

  return result
}
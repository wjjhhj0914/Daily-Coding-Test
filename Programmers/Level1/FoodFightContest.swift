import Foundation

func solution(_ food: [Int]) -> String {
  var left = ""

  for i in 1..<food.count {
    let count = food[i] / 2

    left += String(repeating: "\(i)", count: count)
  }

  return left + "0" + String(left.reversed())
}
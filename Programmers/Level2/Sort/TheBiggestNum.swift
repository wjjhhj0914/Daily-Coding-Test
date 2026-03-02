import Foundation

func solution(_ numbers:[Int]) -> String {
  let stringNumbers = numbers.map { String($0) }

  let sortedNumbers = stringNumbers.sorted { $0 + $1 > $1 + $0 }

  let answer = sortedNumbers.joined()

  if answer.first == "0" {
    return "0"
  }

  return answer
}
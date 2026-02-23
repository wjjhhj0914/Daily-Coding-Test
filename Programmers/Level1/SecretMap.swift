func solution(_ n: Int, _ arr1: [Int], _ arr2: [Int]) -> [String] {

  var answer: [String] = []

  for i in 0..<n {
    var combined = arr1[i] | arr2[i]

    var binaryString = String(combined, radix: 2)

    while binaryString.count < n {
      binaryString = "0" + binaryString
    }

    let row = binaryString.map { $0 == "1" ? "#" : " " }.joined()
    answer.append(row)
  }

  return answer
}
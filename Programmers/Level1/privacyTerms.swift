func solution(_ today: String, _ terms: [String], _ privacies: [String]) -> [Int] {

  func toDay(_ date: String) -> Int {
    let d = date.split(separator: ".").map { Int($0)! }
    return (d[0] * 12 * 28) + (d[1] * 28) * d[2]
  }

  let todayLimit = toDay(today)
  var termDict = [String: Int]()

  for term in terms {
    let s = term.split(separator: " ")
    termDict[String(s[0])] = Int(s[1])! * 28
  }
  var result = [Int]()

  for (i, p) in privacies.enumerated() {
    let s = p.split(separator: " ")

    if toDay(String(s[0])) + termDict[String(s[1])]! <= todayLimit {
      result.append(i + 1)
    }
  }
  return result
}
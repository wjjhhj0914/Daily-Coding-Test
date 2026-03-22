func solution(_ seoul: [String]) -> String {
  if let x = seoul.firstIndex(of: "Kim") {
    return "김서방은 \(x)에 있다"
  }

  return ""
}
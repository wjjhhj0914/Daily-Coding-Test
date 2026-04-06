func solution(_ a: Int, _ b: Int) -> Int64 {
  let start = min(a, b)
  let end = max(a, b)

  return Int64((start...end).reduce(0, +))
}
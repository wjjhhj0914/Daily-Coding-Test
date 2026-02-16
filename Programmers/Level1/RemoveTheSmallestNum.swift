func solution(_ arr: [Int]) -> [Int] {
  if arr.count <= 1 {
    return [-1]
  }

  guard let minValue = arr.min() else {
    return [-1]
  }

  let result = arr.filter { $0 != minValue }

  return result
}
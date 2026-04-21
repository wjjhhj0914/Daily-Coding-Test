import Foundation

func solution(_ s: String) -> Bool {
  let lowerString = s.lowercased()

  let p = lowerString.filter { $0 == "p" }.count
  let y = lowerString.filter { $0 == "y" }.count

  return p == y
}
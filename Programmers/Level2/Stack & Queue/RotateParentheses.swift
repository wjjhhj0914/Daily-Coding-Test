import Foundation

func solution(_ s:String) -> Int {
    func isValid(_ chars: [Character]) -> Bool {
      var stack = [Character]()
      let pairs: [Character: Character] = [")": "(", "]": "[", "}": "{"]

      for char in chars {
        switch char {
          case "(", "[", "{":
          stack.append(char)
          case ")":
          if stack.popLast() != "(" { return false }
          case "]":
          if stack.popLast() != "[" { return false }
          case "}":
          if stack.popLast() != "{" { return false }
          default:
          break
        }
      }
      return stack.isEmpty
    }

    var arr = Array(s)
    var result = 0

    for i in 0..<arr.count {
      let rotated = arr[i...] + arr[..<i]

      if isValid(Array(rotated)) {
        result += 1
      }
    }
    return result
}
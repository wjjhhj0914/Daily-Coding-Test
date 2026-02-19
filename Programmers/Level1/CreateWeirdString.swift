func solution(_ s: String) -> String {
  var result = ""
  var index = 0

  for char in s {
    if char == " " {
      result.append(char)
      index = 0
    } else {
      if index % 2 == 0 {
        result.append(char.uppercased())
      } else {
        result.append(char.lowercased())
      }
      index += 1
    }
  }
  return result
}
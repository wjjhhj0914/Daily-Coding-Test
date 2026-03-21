func solution(_ s: String) -> String {
  let characters = Array(s)
  let length = characters.count
  let middle = length / 2

  if length % 2 == 0 {
    return String(characters[middle-1...middle])
  } else {
    return String(characters[middle])
  }
}
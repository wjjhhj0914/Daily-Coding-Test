import Foundation

func solution(_ s: String, _ skip: String, _ index: Int) -> String {
    // 1. skip에 포함되지 않은 알파벳들로만 구성된 배열을 만든다.
    let alphabets = "abcdefghijklmnopqrstuvwxyz".filter { !skip.contains($0) }
    let alphabetArray = Array(alphabets)

    // 2. 문자열 s의 각 글자를 변환한다.
    let result = s.map { char -> String in
        // 현재 글자가 alphabetArray에서 몇 번째 위치에 있는지 찾는다.
        if let currentPosition = alphabetArray.firstIndex(of: char) {
            // index만큼 뒤의 위치를 계산. (나머지 연산으로 wrap-around 처리)
            let newPosition = (currentPosition + index) % alphabetArray.count
            return String(alphabetArray[newPosition])
        }
        return String(char)
    }

    // 3. 변환된 글자들을 하나의 문자열로 합쳐서 반환.
    return result.joined()
}

import Foundation

func solution(_ age:Int) -> Int {
  let currentYear = 2022
  return currentYear - age + 1
}

/*
구해야 하는 것 : 선생님 출생 연도
알고 있는 것 : 2022년 기준 선생님의 나이(age)

현재 년도에서 2022년 기준 나이를 빼면, 출생 연도를 알 수 있지 않을까?

age = 40
2022 - 40 = 1982

근데 왜 1983이 안 나왔을까?

한국 나이는 태어날 때부터 1살로 치니까, +1을 해줘야 한다.
*/
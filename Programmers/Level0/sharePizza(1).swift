import Foundation

func solution(_ n:Int) -> Int {
    let result = n / 7 // 정수 몫
    let remain = n % 7 // 나머지

    if remain > 0 {
        return result + 1 // 나머지가 있으면 한 판 더
    } else {
        return result // 딱 떨어지면 그대로
    }
}
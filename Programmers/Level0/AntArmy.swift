// hp를 5로 나눈 몫은 장군개미.
// hp를 5로 나누고 남은 hp를 다시 3으로 나눈 몫은 병정개미.
// 또 거기서 남은 hp를 1로 나눈 몫은 일개미.

import Foundation

func solution(_ hp:Int) -> Int {
    var count = 0 // 필요한 개미
    var remains = hp // 남은 체력

    // 장군개미
    count += remains / 5
    remains = remains % 5

    // 병정개미
    count += remains / 3
    remains = remains % 3

    // 일개미
    count += remains / 1
    remains = remains % 1

    return count
}
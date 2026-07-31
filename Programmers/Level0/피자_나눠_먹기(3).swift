import Foundation

func solution(_ slice:Int, _ n:Int) -> Int {
    let pizzaCount = n / slice
    let remainder = n % slice

    if remainder == 0 {
        return pizzaCount
    } else {
        return pizzaCount + 1
    }
}

/*
알고 있는 것
- 2 ~ 10 조각으로 잘라줌
- 피자 조각 수 slice
- 피자를 먹는 사람 수 n

구해야 하는 것 : 최소 몇 판의 피자를 시켜야 함?

조건 : 각각 최소 한 조각 이상 먹을 거야.

첫 번째 예
- 피자 한 판은 7조각이다.
- 먹어야 하는 사람은 10명이다.
- 한 판으로는 7명만 먹을 수 있으므로 모든 사람이 먹을 수 없다.
- 따라서 한 판을 더 주문해야 한다.

피자를 먹는 사람 수 n을 한 판의 조각 수 slice로 나눈다.
- 나누어떨어지면 몫만큼 주문.
- 나누어떨어지지 않으면, 못 먹는 사람이 있다는 것이니 한 판을 더 주문.
*/
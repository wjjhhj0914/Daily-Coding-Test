import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    let sumOfCount = Int64(count) * Int64(count + 1) / 2

    let totalCost = Int64(price) * sumOfCount

    let shortage = totalCost - Int64(money)

    return shortage > 0 ? shortage : 0
}
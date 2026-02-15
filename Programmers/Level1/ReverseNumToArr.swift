func solution(_ n:Int64) -> [Int] {
    var newArr = Array(String(n))
    newArr.reverse()
    return newArr.map{ Int(String($0)) ?? 0 }

    // return String(n).reversed().compactMap { Int(String($0)) }
}

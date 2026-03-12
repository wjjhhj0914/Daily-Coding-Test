import Foundation

func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
    var visited = Array(repeating: false, count: dungeons.count)
    var maxCount = 0

    func dfs(currentK: Int, count: Int) {
        maxCount = max(maxCount, count)

        for i in 0..<dungeons.count {
            if !visited[i] && currentK >= dungeons[i][0] {
            visited[i] = true

            dfs(currentK: currentK - dungeons[i][1], count: count + 1)

            visited[i] = false
            }
        }
    }
    dfs(currentK: k, count: 0)
    return maxCount
}
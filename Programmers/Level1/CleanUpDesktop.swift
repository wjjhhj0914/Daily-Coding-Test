import Foundation

func solution(_ wallpaper: [String]) -> [Int] {
    // 1. 최소/최대 좌표를 초기화
    var minX = Int.max, minY = Int.max
    var maxX = Int.min, maxY = Int.min

    // 2. 바탕화면 전체 순회
    for (i, row) in wallpaper.enumerated() {
        for (j, char) in row.enumerated() {
            // 3. # 찾으면 좌표 갱신
            if char == "#" {
                minX = min(minX, i)
                minY = min(minY, j)
                maxX = max(maxX, i)
                maxY = max(maxY, j)
            }
        }
    }

    // 4. 드래그의 끝점은 파일의 위치보다 1씩 더 커야 함
    return [minX, minY, maxX + 1, maxY + 1]
}

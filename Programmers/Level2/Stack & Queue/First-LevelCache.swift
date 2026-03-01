func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    if cacheSize == 0 { return cities.count * 5 }

    var totalTime = 0
    var cache = [String]()

    for city in cities {
        let cityName = city.lowercased()

        if let index = cache.firstIndex(of: cityName) {
            totalTime += 1

            cache.remove(at: index)
            cache.append(cityName)
        } else {
            totalTime += 5

            if cache.count >= cacheSize {
                cache.removeFirst()
            }
            cache.append(cityName)
        }
    }
    return totalTime
}
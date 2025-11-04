import UIKit

var greeting = "Hello, playground"

var components = URLComponents(string: "https://itunes.apple.com/search")!
components.queryItems = [
        "term": "pink",
        "media": "music",
        "limit": "1"
].map { URLQueryItem(name: $0.key, value: $0.value) }

Task {
    let (data, response) = try await URLSession.shared.data(
        from: components.url!
    )
    if let httpResponse = response as? HTTPURLResponse,
        httpResponse.statusCode == 200,
        let string = String(data: data, encoding: .utf8)
    {
        print(string)
    }
}


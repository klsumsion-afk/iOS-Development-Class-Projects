import UIKit
import Foundation

import PlaygroundSupport

var greeting = "Hello, playground"

var components = URLComponents(string: "https://itunes.apple.com/search")!
components.queryItems = [
    "term": "Taylor+Swift",
    "media": "music",
    "limit": "1"
].map { URLQueryItem(name: $0.key, value: $0.value) }

struct StoreItem: Codable {
    let artistName: String
    let trackName: String
    let kind: String
    let primaryGenreName: String
    
    enum CodingKeys: String, CodingKey {
        case artistName
        case trackName
        case kind
        case primaryGenreName
    }
    
    init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.artistName = try container.decode(String.self, forKey: .artistName)
        self.trackName = try container.decode(String.self, forKey: .trackName)
        self.kind = try container.decode(String.self, forKey: .kind)
        self.primaryGenreName = try container.decode(String.self, forKey: .primaryGenreName)
    }
}

struct SearchResponse: Codable {
    let results: [StoreItem]
}

func fetchItems(matching query: [String: String]) async throws -> [StoreItem]

extension Data {
    func prettyPrintedJSONString() {
        guard
            let jsonObject = try?
                JSONSerialization.jsonObject(with: self, options: []),
            let jsonData = try?
                JSONSerialization.data(withJSONObject:
                                        jsonObject, options: [.prettyPrinted]),
            let prettyJSONString = String(data: jsonData,
                                          encoding: .utf8) else {
            print("Failed to read JSON Object.")
            return
        }
        print(prettyJSONString)
    }
}

Task {
    let (data, response) = try await URLSession.shared.data(
        from: components.url!
    )
    if let httpResponse = response as? HTTPURLResponse,
       httpResponse.statusCode == 200 {
        data.prettyPrintedJSONString()
    }
}


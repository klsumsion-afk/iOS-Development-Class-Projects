//: Playground – JSON Decoding & Encoding (Swift 6)
// Goal: Teach the essentials in a clear, visual way.
// Keep JSON examples pretty‑printed. Keep models small. Print results.
// Sections: 1) Read JSON → Swift, 2) Map keys, 3) Arrays & nested,
// 4) Optionals, 5) Dates, 6) Quick Encoding demo.

import Foundation

// Helper: pretty JSON from Data (for visual checks)
func prettyString(from data: Data) -> String {
    guard let obj = try? JSONSerialization.jsonObject(with: data),
          let pretty = try? JSONSerialization.data(withJSONObject: obj, options: [.prettyPrinted, .sortedKeys])
    else { return "<invalid json>" }
    return String(data: pretty, encoding: .utf8) ?? "<utf8>"
}











// MARK: 1) Read JSON → Swift (basic types)
// JSON → (String, Int, Bool)
let userJSON = """
{
  "name": "Ava",
  "age": 16,
  "isMember": true,
  "coolness": 12,
  "settings": {
    "likesDogs": true,
    "numberOfFriends": 7
  }
}
"""

struct User: Codable {
    let name: String
    let age: Int
    let isMember: Bool
    let coolness: Int
    let settings: Settings
}

struct Settings: Codable {
    let likesDogs: Bool
    let numberOfFriends: Int
}

print("\n— 1) Basic decode —")
print(prettyString(from: userJSON.data(using: .utf8)!))

let decoder = JSONDecoder()

if let user = try? decoder.decode(User.self, from: Data(userJSON.utf8)) {
    print("\nname:", user.name, "\nage:", user.age, "\nisMember:", user.isMember, "\ncoolness:", user.coolness)
    print("\nlikesDogs:", user.settings.likesDogs, "\nnumberOfFriends:", user.settings.numberOfFriends)
} else {
    print("Failed to decode User")
}

// NOTE: The 'coolness' key is available but unused. You don't have to include everything in your Codeable type but everything you do include needs to match (unless you make the property optional - explored more below).
// How would we add the property coolness to the User type?
// How would we add a settings object to the user?










// MARK: 2) Map keys (CodingKeys)
// JSON uses snake_case; Swift prefers camelCase.
let bookJSON = """
{
  "title": "Peter Pan",
  "publication_year": 1911,
  "coolness_rating": 12
}
"""

struct Book: Codable {
    let title: String
    let publicationYear: Int
    
    enum CodingKeys: String, CodingKey {
        case title
        case publicationYear = "publication_year"
    }
}

print("\n— 2) CodingKeys mapping —")
print(prettyString(from: bookJSON.data(using: .utf8)!))

if let book = try? decoder.decode(Book.self, from: Data(bookJSON.utf8)) {
    print("\ntitle:", book.title, "\nyear:", book.publicationYear)
}

// Let's add coolness as a property on the Book as well













// MARK: 3) Arrays & nested objects
// Person contains an array of Book
let personJSON = """
[
{
  "name": "Rody Albuerne",
  "favorite_books": [
    { "title": "The Wonderful Wizard of Oz", "publication_year": 1900 },
    { "title": "Peter Pan", "publication_year": 1911 }
  ]
},
{
  "name": "Rudy Albuerne",
  "favorite_books": [
    { "title": "The Wonderful Wizard of Oz", "publication_year": 1900 },
    { "title": "Peter Pan", "publication_year": 1911 }
  ]
}
]
"""

struct Person: Codable {
    let name: String
    let favoriteBooks: [Book]
    enum CodingKeys: String, CodingKey {
        case name
        case favoriteBooks = "favorite_books"
    }
}

print("\n— 3) Arrays & nested —")
print(prettyString(from: personJSON.data(using: .utf8)!))

if let people = try? decoder.decode([Person].self, from: Data(personJSON.utf8)) {
    for person in people {
        print("person:", person.name)
        print("first favorite:", person.favoriteBooks.first?.title ?? "<none>")
    }
}

// What if we have an array coming back at the root of the JSON instead of an object?










// MARK: 4) Optionals (missing or null)
// If a key might not exist, make it Optional.
let optionalJSON = """
{
  "title": "Sample",
  "publication_year": 2020,
  "subtitle": "This is a subtitle"
}
"""

struct Article: Codable {
    let title: String
    let subtitle: String? // may be missing or null
}

print("\n— 4) Optionals —")
print(prettyString(from: optionalJSON.data(using: .utf8)!))

if let simple = try? decoder.decode(Article.self, from: Data(optionalJSON.utf8)) {
    print("\ntitle:", simple.title, "\nsubtitle:", simple.subtitle ?? "N/A")
}

// What if we get a 'null' back for subtitle?
// What if we get a value back for subtitle?
// Let's add publication_year as a property of Article...but it could come back as 'null' if it hasn't been released yet













// MARK: 5) Dates (simple formatter)
// JSON date in yyyy-MM-dd format.
let reportJSON = """
{
  "report_date": "2024-01-20",
  "name": "Final Results"
}
"""

struct Report: Codable {
    let name: String
    let reportDate: Date
    enum CodingKeys: String, CodingKey {
        case name
        case reportDate = "report_date"
    }
}

let dateDecoder = JSONDecoder()
let df: DateFormatter = {
    let formatter = DateFormatter()
    formatter.calendar = Calendar(identifier: .iso8601)
    formatter.locale = Locale(identifier: "en_US_POSIX")
    formatter.timeZone = TimeZone(secondsFromGMT: 0)
    formatter.dateFormat = "yyyy-MM-dd"
    return formatter
}()
dateDecoder.dateDecodingStrategy = .formatted(df)

print("\n— 5) Dates —")
print(prettyString(from: reportJSON.data(using: .utf8)!))

if let report = try? dateDecoder.decode(Report.self, from: Data(reportJSON.utf8)) {
    print("\nname:", report.name, "\ndate:", df.string(from: report.reportDate))
}











// MARK: 6) Quick Encoding Demo
// Encode a Swift value to pretty JSON.
struct Note: Codable {
    let title: String
    let isPinned: Bool
}

let note = Note(title: "Homework", isPinned: true)
let encoder = JSONEncoder()

encoder.outputFormatting = [.prettyPrinted, .sortedKeys]

if let data = try? encoder.encode(note) {
    print("\n— 6) Encoding —")
    print(String(data: data, encoding: .utf8)!)
}

// The Codeable protocol enables decoding and encoding










// MARK: 7) Simple Web API demo (GET → JSON → Swift)

// We'll use the free JSONPlaceholder API.
// Example endpoint: https://jsonplaceholder.typicode.com/todos/1

struct Todo: Codable {
    let userId: Int
    let id: Int
    let title: String
    let completed: Bool
}

func fetchTodo() async {
    let url = URL(string: "https://jsonplaceholder.typicode.com/todos/1")!

    do {
        let (data, response) = try await URLSession.shared.data(from: url)
        guard (response as? HTTPURLResponse)?.statusCode == 200 else {
            print("Request failed:", (response as? HTTPURLResponse)?.statusCode ?? -1)
            return
        }

        // Show the raw JSON we got back (pretty-printed)
        print("\n— 7) Web API: raw JSON —")
        print(prettyString(from: data))

        // Decode into our Swift model
        let todo = try JSONDecoder().decode(Todo.self, from: data)
        print("\nDecoded Todo → id:", todo.id,
              "\ntitle:", "\"\(todo.title)\"",
              "\ncompleted:", todo.completed)

    } catch {
        print("Network or decoding error:", error)
    }
}

Task { await fetchTodo() }

// What happens if we paste 'https://jsonplaceholder.typicode.com/todos/1' in the browser?
// Note the try, do and catch syntax here - this will be explored a bit more later
// Note the separate async/await syntax here - this will also be explored later









// MARK: 8) Async & Await explained
// await → pauses execution until the async function completes
// async → marks a function that performs asynchronous work
// Task → runs async code from a non-async context

// Example: a fake slow function to demonstrate async/await
func fetchMessage() async -> String {
    try? await Task.sleep(nanoseconds: 5_000_000_000) // wait 5 seconds
    return "Hello from async world!"
}

print("\n— 8) Async/Await demo —")

Task {
    let message = await fetchMessage()  // await waits for the result
    print(message)
}

print("This is after the 'Task'")













// MARK: 9) Tasks explained
// Tasks run async work concurrently. Each Task starts immediately.
// Below, we launch two async calls that run in parallel.

func fetchGreeting() async -> String {
    try? await Task.sleep(nanoseconds: 500_000_000)
    return "Hi"
}

func fetchName() async -> String {
    try? await Task.sleep(nanoseconds: 100_000_000)
    return "Ava"
}

Task {
    async let g = fetchGreeting()
    async let n = fetchName()
    let combined = await g + ", " + n + "!"
    print("Combined:", combined)
}

print("This is also after the task")













// MARK: 10) Custom Error Enums & Throwing Functions
// You can define your own Error types for better error messages.

enum FileError: Error {
    case notFound
    case invalidFormat
}

func readFile(named name: String) throws -> String {
    if name.isEmpty {
        throw FileError.notFound
    }
    
    if !name.hasSuffix(".txt") {
        throw FileError.invalidFormat
    }
    
    return "File loaded successfully!"
}

print("\n— 10) Custom Errors —")

func demoErrors() {
    do {
        let result = try readFile(named: "notes.txt")
        print(result)
        
        _ = try readFile(named: "badfile.json") // triggers throw
        
    } catch FileError.notFound {
        print("Error: File not found.")
    } catch FileError.invalidFormat {
        print("Error: Invalid file format.")
    } catch {
        print("Unknown error:", error)
    }
}

demoErrors()


import Foundation

struct APIEndpoints {
    static func getEvents() -> Endpoint<Events> {
        return Endpoint(path: "events", method: .get)
    }
}

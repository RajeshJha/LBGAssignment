
import Foundation

extension Date {
    func currentTimeInUTC() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = DateFormatType.serverUTCFormat.rawValue
        formatter.timeZone = TimeZone(abbreviation: "UTC")
        return formatter.string(from: Date())
    }
}

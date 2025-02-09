
import Foundation
class DummyDataHelper {
    static func testURLForResource(_ resourceName: String) -> URL {
        return Bundle(for: Helpers.self)
            .url(forResource: resourceName, withExtension: nil)!
    }
    
    static func dataFrom(resource: String) -> Data {
        let url = testURLForResource(resource)
        do {
            let data1 = try Data(contentsOf: url)
            return data1
        } catch { }
        
        return Data()   // should never happen
    }
}
private class Helpers {
}


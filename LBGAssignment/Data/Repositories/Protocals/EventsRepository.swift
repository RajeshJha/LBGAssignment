
import Foundation
protocol EventsRepository {
    func fetchEvents(completion: @escaping (Result<Events, Error>) -> Void)
}

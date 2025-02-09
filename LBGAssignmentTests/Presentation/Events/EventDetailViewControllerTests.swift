
import XCTest
@testable import LBGAssignment

final class EventDetailViewControllerTests: XCTestCase {

    private var coordinator : AppCoordinator!
    private var nvc : UINavigationController!
    override func setUpWithError() throws {
        coordinator = AppCoordinator()
        nvc = UINavigationController(rootViewController: UIViewController())
    }
    
    func testForLoadingDetailVC() throws {
        let event = Event.getSingleEventWithDummyData()!
        coordinator.navigateToEventDetails(event)
    }
    
    func testForLoadingDetailVCAlone() throws {
        let expectation = self.expectation(description: "list view loaded ")
        let event = Event.getSingleEventWithDummyData()!
        let detailVC = NavigationCoordinator.eventDetail(event).getViewController(coordinator)
        nvc.pushViewController(detailVC, animated: false)
        detailVC.loadViewIfNeeded()
        XCTAssertEqual(nvc.viewControllers.count, 2)
        XCTAssertEqual(detailVC.isViewLoaded, true)
        expectation.fulfill()
        waitForExpectations(timeout: 20, handler: nil)
    }

}

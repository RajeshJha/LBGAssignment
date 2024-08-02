
import UIKit

enum Storyboard: String {
    case main = "Main"
}
extension UIStoryboard {
    class var main: UIStoryboard {
        return UIStoryboard(name: Storyboard.main.rawValue, bundle: nil)
    }
}

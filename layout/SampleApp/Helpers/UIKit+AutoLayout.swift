// bachelors-diploma-poliorang

import UIKit

public extension UIView {
    static func autolayout() -> Self {
        let view = self.init()
        view.translatesAutoresizingMaskIntoConstraints = false

        return view
    }

    @discardableResult
    func autolayout() -> Self {
        translatesAutoresizingMaskIntoConstraints = false

        return self
    }
}

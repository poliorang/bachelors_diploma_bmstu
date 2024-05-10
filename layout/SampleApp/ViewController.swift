// bachelors-diploma-poliorang

import UIKit

class ViewController: LayoutInTimeViewController {
    
    let xmlName = "test"

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        ReloadManager.addObserver(self)
        filePath = xmlPath(xmlName: xmlName)

        reload()
    }
}

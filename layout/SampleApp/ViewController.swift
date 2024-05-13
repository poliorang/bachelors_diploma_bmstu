// bachelors-diploma-poliorang

import UIKit

class ViewController: LayoutInTimeViewController {
    
    let xmlName = "test"

    override func viewDidLoad() {
        super.viewDidLoad()
        ReloadManager.addObserver(self)
        filePath = xmlPath(xmlName: xmlName)

        reload()
    }
}

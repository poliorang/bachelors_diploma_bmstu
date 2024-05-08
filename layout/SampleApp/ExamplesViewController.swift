
import UIKit

class ExamplesViewController: UIViewController, ViewLayouting {

    let layoutNode = Layout()
    let xmlName = "test"
    var filePath: String?

    let fileManager = FileManager.default

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        ReloadManager.addObserver(self)
        filePath = xmlPath(xmlName: xmlName)

        reload()
    }

    func reload() {
        guard let filePath = filePath else {
            return
        }
        print(filePath)
        if fileManager.fileExists(atPath: filePath) {
            // Читаем данные из файла
            if let data = fileManager.contents(atPath: filePath) {
                // Преобразуем данные в строку и выводим содержимое файла
                if let xmlString = String(data: data, encoding: .utf8) {
                    print(xmlString)
                    let view = layoutNode.createUIView(from: xmlString)
                    if let createdView = view {
                        self.view.addSubview(createdView)
                    }
                } else {
                    print("Невозможно преобразовать данные в строку")
                }
            } else {
                print("Невозможно прочитать данные из файла")
            }
        } else {
            print("Файл не найден по указанному пути")
        }
    }
}

func xmlPath(xmlName: String?) -> String? {
    guard let lastIndex = #file.lastIndex(of: "/"),
          let xmlName = xmlName else {
        return nil
    }

    let trimmedPath = String(#file.prefix(upTo: lastIndex)) + "/" + xmlName + ".xml"

    return trimmedPath
}

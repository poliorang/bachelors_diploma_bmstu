// bachelors-diploma-poliorang

import UIKit

class LayoutInTimeViewController: UIViewController {

    let fileManager = FileManager.default
    let layoutInTime = LayoutInTime()
    var filePath: String?

    func reload() {
        guard let filePath = filePath else {
            Logger.log(message: "Не найдена строка, указывающая путь к файлу")
            return
        }

        Logger.log(message: filePath)
        if !fileManager.fileExists(atPath: filePath) {
            Logger.log(message: "Файл не найден по указанному пути")
            return
        }

        guard let data = fileManager.contents(atPath: filePath) else {
            Logger.log(message: "Невозможно прочитать данные из файла")
            return
        }

        guard let xmlString = String(data: data, encoding: .utf8) else {
            Logger.log(message: "Невозможно преобразовать данные в строку")
            return
        }

        Logger.log(message: xmlString)
        clearView(self.view)
        layoutInTime.createLayout(rootView: self.view, from: xmlString)
    }

    private func clearView(_ view: UIView) {
        for subview in view.subviews {
            subview.removeFromSuperview()
        }
    }
}

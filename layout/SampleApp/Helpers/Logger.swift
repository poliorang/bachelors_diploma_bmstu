// bachelors-diploma-poliorang

import Foundation

class Logger {
    static func log(message: String) {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"

        let timestamp = formatter.string(from: Date())

        print("\(timestamp): \(message)")
    }
}

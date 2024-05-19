// bachelors-diploma-poliorang

import UIKit

func overrideMethod(_ selectorA: Selector, of sourceClass: AnyClass, with selectorB: Selector) {
    let newMethod = class_getInstanceMethod(sourceClass, selectorB)!
    let oldMethod = class_getInstanceMethod(sourceClass, selectorA)!
    let inheritedImplementation = class_getInstanceMethod(class_getSuperclass(sourceClass), selectorA)
        .map(method_getImplementation)
    if method_getImplementation(oldMethod) == inheritedImplementation {
        let types = method_getTypeEncoding(oldMethod)
        class_addMethod(sourceClass, selectorA, method_getImplementation(newMethod), types)
        return
    }
    method_exchangeImplementations(oldMethod, newMethod)
}

func benchmark<T>(_ block: () -> T) {
    let startTime = CFAbsoluteTimeGetCurrent()
    let result = block()
    let endTime = CFAbsoluteTimeGetCurrent()
    let elapsedTime = endTime - startTime
    writeIntValueToFile(elapsedTime)
}

func writeIntValueToFile(_ value: CFAbsoluteTime) {
    guard let lastIndex = #file.lastIndex(of: "/") else { return }

    let firstTrimmedPath = String(#file.prefix(upTo: lastIndex)) + "/res.txt"

    let fileURL = URL(fileURLWithPath: firstTrimmedPath)

    do {
        let fileHandle = try FileHandle(forWritingTo: fileURL)
        fileHandle.seekToEndOfFile()

        let stringValue = String(value) + "\n"
        if let data = stringValue.data(using: .utf8) {
            fileHandle.write(data)
            print("Значение \(value) успешно записано в файл.")
        }

        fileHandle.closeFile()
    } catch {
        print("Ошибка записи в файл: \(error)")
    }
}


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

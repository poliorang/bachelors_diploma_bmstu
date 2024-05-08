//
//  ReloadManager.swift
//  diplomaTest
//
//  Created by Polina Egorova on 25.04.2024.
//

import Foundation
import UIKit

class ReloadManager {
  static func install() {

    #if arch(arm64) || arch(x86_64)

    if !UIResponder.handlerInstalled {

      print("install")
      // Swizzle UIResponder.keyCommands so we can handle Cmd-R correctly
      // regardless of which view or controller currently has focus
      // (Don't worry, this code is only included in simulator builds)
      replace(#selector(getter: UIResponder.keyCommands), of: UIResponder.self,
              with: #selector(UIResponder.layout_keyCommands))
      UIResponder.handlerInstalled = true
    }

    #endif
  }
}

#if arch(arm64) || arch(x86_64)

  private extension UIResponder {
    static var handlerInstalled = false

    @objc func layout_keyCommands() -> [UIKeyCommand]? {
      return (layout_keyCommands() ?? []) + [
        UIKeyCommand(
          input: "t",
          modifierFlags: .command,
          action: #selector(layout_reloadLayout)
        ),
      ]
    }

    @objc private func layout_reloadLayout() {
      print("reload1")
    }
  }

#endif

func replace(_ sela: Selector, of cls: AnyClass, with selb: Selector) {
  let swizzledMethod = class_getInstanceMethod(cls, selb)!
  let originalMethod = class_getInstanceMethod(cls, sela)!
  let inheritedImplementation = class_getInstanceMethod(class_getSuperclass(cls), sela)
    .map(method_getImplementation)
  if method_getImplementation(originalMethod) == inheritedImplementation {
    let types = method_getTypeEncoding(originalMethod)
    class_addMethod(cls, sela, method_getImplementation(swizzledMethod), types)
    return
  }
  print("replace")
  method_exchangeImplementations(originalMethod, swizzledMethod)
}

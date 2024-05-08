import UIKit

protocol ViewLayouting: UIViewController {
    func reload()
}

class ReloadManager {
    private static var observersWeak = [ObserverWeak]()

    private struct ObserverWeak {
        weak var observer: ViewLayouting?
    }

    static var observers: [ViewLayouting] {
        return observersWeak.compactMap { $0.observer }
    }

    static func addObserver(_ observer: ViewLayouting) {
        var alreadyRegistered = false
        observersWeak = observersWeak.filter {
            guard let o = $0.observer else { return false }
            if o === observer { alreadyRegistered = true }
            return true
        }
        if alreadyRegistered {
            return
        }
        observersWeak.append(ObserverWeak(observer: observer))

        #if arch(arm64) || arch(x86_64)

            if !UIResponder.handlerInstalled {

                print("install")
                overrideMethod(#selector(getter: UIResponder.keyCommands), 
                               of: UIResponder.self,
                               with: #selector(UIResponder.layoutItTimeKeyCommands)
                )
                UIResponder.handlerInstalled = true
            }

        #endif
    }

    static func reload() {
        for observer in observers {
            observer.reload()
        }
    }
}

#if arch(arm64) || arch(x86_64)

    private extension UIResponder {
        static var handlerInstalled = false

        @objc func layoutItTimeKeyCommands() -> [UIKeyCommand]? {

            return (layoutItTimeKeyCommands() ?? []) + [
                UIKeyCommand(
                    input: "t",
                    modifierFlags: .command,
                    action: #selector(reloadInTime)
                ),
            ]
        }

        @objc private func reloadInTime() {
            print("reload1")
            ReloadManager.reload()
        }
    }

#endif

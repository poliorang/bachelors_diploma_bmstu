// bachelors-diploma-poliorang

import UIKit

class ReloadManager {
    private static var observersWeak = [ObserverWeak]()

    private struct ObserverWeak {
        weak var observer: LayoutInTimeViewController?
    }

    static var observers: [LayoutInTimeViewController] {
        return observersWeak.compactMap { $0.observer }
    }

    static func addObserver(_ observer: LayoutInTimeViewController) {
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

                Logger.log(message: "Observer installed")
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
            Logger.log(message: "Reload start")
            ReloadManager.reload()
        }
    }

#endif

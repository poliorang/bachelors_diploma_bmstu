class ReloadManager {
  private static var observersWeak = [ObserverWeak]()

  private struct ObserverWeak {
    weak var observer: LayoutInTimeViewController?
  }

  static var observers: [LayoutInTimeViewController] {
    return observersWeak.compactMap { $0.observer }
  }

  static func addObserver(observer: LayoutInTimeViewController) {
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
          overrideMethod(
            #selector(getter: UIResponder.keyCommands),
            of: UIResponder.self,

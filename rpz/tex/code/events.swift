#if arch(arm64) || arch(x86_64)
  private extension UIResponder {
    static var handlerInstalled = false

    @objc func layoutItTimeKeyCommands() -> [UIKeyCommand]? {

      return (layoutItTimeKeyCommands() ?? []) + [
        UIKeyCommand(
          input: "t",
          modifierFlags: .command,
          action: #selector(reloadInTime)

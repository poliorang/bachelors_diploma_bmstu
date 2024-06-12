class LayoutInTimeViewController: UIViewController {
  let fileManager = FileManager.default
  let layoutInTime = LayoutInTime()
  func reload() {
    clearView(view)
    layoutInTime.createLayout(rootView: view, from: xmlPath)
  }
  private func clearView(_ view: UIView) {
    for subview in view.subviews {
      subview.removeFromSuperview() }
  }
}

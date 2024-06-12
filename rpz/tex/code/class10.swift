  private func incrementIndex(index: inout Int) {
    index += 1
  }

  private func incrementIndexByIndex(
    indexI: inout Int,
    by indexJ: Int) {
    indexI = indexJ + 1
  }

  private func createBaseView() -> UIView {
    UIView(frame: CGRect(
      x: 0,
      y: 0,
      width: UIScreen.main.bounds.width,
      height: UIScreen.main.bounds.height)
    )
  }
}

extension LayoutInTime {
  private func setTextAligment(
    component: inout UILabel,
    property: String) {
    switch property {
    case "left":
      component.textAlignment = 
        NSTextAlignment(rawValue: 0)!
    case "center":

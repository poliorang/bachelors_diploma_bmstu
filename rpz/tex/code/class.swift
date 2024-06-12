class LayoutInTime {
  public func createLayout(rootView: UIView, from xml: String) {
    guard let clearContent = parseXML(xmlContent: xml) else {

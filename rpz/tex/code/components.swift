enum ComponentType {
  case uiView
  case uiLabel
  case uiButton

  var startTag: String {
    switch self {
    case .uiView:
      return "UIView"
    case .uiLabel:
      return "UILabel"
    case .uiButton:
      return "UIButton"
    }
  }

  var endTag: String {
    switch self {
    case .uiView:
      return "/UIView"

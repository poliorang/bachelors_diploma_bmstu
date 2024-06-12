    case .uiLabel:
      return "/UILabel"
    case .uiButton:
      return "/UIButton"
    }
  }
}

struct Anchors {
  public var topAnchorConstant: CGFloat?
  public var bottomAnchorConstant: CGFloat?
  public var leftAnchorConstant: CGFloat?
  public var rightAnchorConstant: CGFloat?
  public var height: CGFloat?
  public var width: CGFloat?
}

enum ComponentPropertyType {
  case width
  case height
  case topAnchor
  case bottomAnchor
  case leftAnchor
  case rightAnchor
  case backgroundColor
  case textAlignment
  case text

  var value: String {

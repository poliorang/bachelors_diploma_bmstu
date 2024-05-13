// bachelors-diploma-poliorang

import UIKit

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
        switch self {
        case .width:
            "width"
        case .height:
            "height"
        case .topAnchor:
            "topAnchor"
        case .bottomAnchor:
            "bottomAnchor"
        case .leftAnchor:
            "leftAnchor"
        case .rightAnchor:
            "rightAnchor"
        case .backgroundColor:
            "backgroundColor"
        case .textAlignment:
            "textAlignment"
        case .text:
            "text"
        }

    }
}


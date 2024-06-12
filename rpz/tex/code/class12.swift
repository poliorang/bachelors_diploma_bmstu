      component.backgroundColor = .darkGray
    case "gray":
      component.backgroundColor = .gray
    case "systemPink":
      component.backgroundColor = .systemPink
    case "yellow":
      component.backgroundColor = .yellow
    case "purple":
      component.backgroundColor = .purple
    case "orange":
      component.backgroundColor = .orange
    default:
      break
    }

    return component
  }

  private func setWidthHeight(
    property: String,
    isHeight: Bool) -> CGFloat {
  if property.contains("%") {
    return CGFloat(Double(
      property.replacingOccurrences(of: "%", with: "")
      ) ?? 0) / 100.0 * (
        isHeight
        ? UIScreen.main.bounds.height
        : UIScreen.main.bounds.width)
    }

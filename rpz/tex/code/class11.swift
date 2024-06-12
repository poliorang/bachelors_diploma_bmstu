      component.textAlignment =
        NSTextAlignment(rawValue: 1)!
    case "right":
      component.textAlignment = 
        NSTextAlignment(rawValue: 2)!
    default:
      break
    }
  }

  private func setBackgroundColor(
    component: UIView,
    property: String) -> UIView {
    switch property {
    case "white":
      component.backgroundColor = .white
    case "black":
      component.backgroundColor = .black
    case "green":
      component.backgroundColor = .green
    case "red":
      component.backgroundColor = .red
    case "blue":
      component.backgroundColor = .blue
    case "brown":
      component.backgroundColor = .brown
    case "cyan":
      component.backgroundColor = .cyan
    case "darkGray":

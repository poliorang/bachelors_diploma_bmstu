        case ComponentPropertyType.rightAnchor.value:
          incrementIndex(index: &j)
          anchors.rightAnchorConstant =
            Double(components[j]) ?? 0.0
        case ComponentPropertyType.backgroundColor.value:
            incrementIndex(index: &j)
                uiView = setBackgroundColor(
                  component: uiView, property: components[j])
          default:
            continue
          }
          incrementIndex(index: &j)
        }
        finalTagIndex = j
        rootView.addSubview(uiView)
        setAnchors(rootView: rootView, 
                   childView: uiView,
                   anchors: anchors)
        incrementIndexByIndex(indexI: &i, by: j)

      case ComponentType.uiLabel.startTag:
        var j = i + 1
        var uiLabel = UILabel().autolayout()
        var anchors = Anchors()
        while components[j] != ComponentType.uiLabel.endTag {
          print(components[j])
          switch components[j] {
            case ComponentType.uiView.startTag,
            ComponentType.uiLabel.startTag,
            ComponentType.uiButton.startTag:
            j += createView(
              rootView: uiLabel,
              from: Array(
                components[j..<components.count]))

          case ComponentPropertyType.width.value:
            incrementIndex(index: &j)
            anchors.width = setWidthHeight(
              property: components[j], isHeight: false)
          case ComponentPropertyType.height.value:
            incrementIndex(index: &j)
            anchors.height = setWidthHeight(
              property: components[j], isHeight: true)

          case ComponentPropertyType.topAnchor.value:
            incrementIndex(index: &j)
            anchors.topAnchorConstant = 
              Double(components[j]) ?? 0.0
          case ComponentPropertyType.bottomAnchor.value:
            incrementIndex(index: &j)
            anchors.bottomAnchorConstant = 
              Double(components[j]) ?? 0.0
          case ComponentPropertyType.leftAnchor.value:
            incrementIndex(index: &j)
            anchors.leftAnchorConstant = 
              Double(components[j]) ?? 0.0
          case ComponentPropertyType.rightAnchor.value:
            incrementIndex(index: &j)
            anchors.rightAnchorConstant = 
              Double(components[j]) ?? 0.0

          case ComponentPropertyType.backgroundColor.value:
            incrementIndex(index: &j)
            uiLabel = setBackgroundColor(
              component: uiLabel,
              property: components[j]) as! UILabel

          case ComponentPropertyType.textAlignment.value:
            incrementIndex(index: &j)
            setTextAligment(component: &uiLabel, 
                            property: components[j])
          case ComponentPropertyType.text.value:
            incrementIndex(index: &j)
            uiLabel.text = components[j]

          default: continue
          }
          incrementIndex(index: &j)
        }
        finalTagIndex = j
        rootView.addSubview(uiLabel)
        setAnchors(rootView: rootView, 
                   childView: uiLabel,
                   anchors: anchors)
        incrementIndexByIndex(indexI: &i, by: j)

      case ComponentType.uiButton.startTag:
        var j = i + 1
        var uiButton = UIButton().autolayout()
        var anchors = Anchors()
        while components[j] != ComponentType.uiButton.endTag {
          switch components[j] {
          case ComponentType.uiView.startTag,
            ComponentType.uiLabel.startTag,
            ComponentType.uiButton.startTag:
            j += createView(
              rootView: uiButton,
              from: Array(components[j..<components.count]))

          case ComponentPropertyType.width.value:
            incrementIndex(index: &j)
            anchors.width = setWidthHeight(
              property: components[j],
              isHeight: false)
          case ComponentPropertyType.height.value:
            incrementIndex(index: &j)
            anchors.height = setWidthHeight(
              property: components[j],
              isHeight: true)

          case ComponentPropertyType.topAnchor.value:
            incrementIndex(index: &j)
            anchors.topAnchorConstant = 
              Double(components[j]) ?? 0.0
          case ComponentPropertyType.bottomAnchor.value:
            incrementIndex(index: &j)
            anchors.bottomAnchorConstant = 
              Double(components[j]) ?? 0.0
          case ComponentPropertyType.leftAnchor.value:
            incrementIndex(index: &j)
            anchors.leftAnchorConstant = 
              Double(components[j]) ?? 0.0
          case ComponentPropertyType.rightAnchor.value:
            incrementIndex(index: &j)
            anchors.rightAnchorConstant = 
              Double(components[j]) ?? 0.0

          case ComponentPropertyType.backgroundColor.value:
            incrementIndex(index: &j)
            uiButton = setBackgroundColor(
              component: uiButton,
              property: components[j]) as! UIButton

          default: continue
          }
          incrementIndex(index: &j)
        }
        finalTagIndex = j
        rootView.addSubview(uiButton)
        setAnchors(rootView: rootView, 
                   childView: uiButton,
                   anchors: anchors)
        incrementIndexByIndex(indexI: &i, by: j)
      default: incrementIndex(index: &i)
      }
    }
    return finalTagIndex
  }

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
    return CGFloat(Double(property) ?? 0)
  }

  private func setAnchors(
    rootView: UIView,
    childView: UIView,
    anchors: Anchors) {
    if let topAnchorConstant = anchors
      .topAnchorConstant {
      NSLayoutConstraint.activate([
        childView.topAnchor.constraint(
          equalTo: rootView.topAnchor, 
          constant: topAnchorConstant
        )
      ])
    }
    if let leftAnchorConstant = anchors
      .leftAnchorConstant {
      NSLayoutConstraint.activate([
        childView.leftAnchor.constraint(
          equalTo: rootView.leftAnchor, 
          constant: leftAnchorConstant
        )
      ])
    }
    if let bottomAnchorConstant = anchors
      .bottomAnchorConstant {
      NSLayoutConstraint.activate([
        childView.bottomAnchor.constraint(
          equalTo: rootView.bottomAnchor, 
          constant: bottomAnchorConstant
        )
      ])
    }
    if let rightAnchorConstant = anchors
      .rightAnchorConstant {
      NSLayoutConstraint.activate([
        childView.rightAnchor.constraint(
          equalTo: rootView.rightAnchor, 
          constant: rightAnchorConstant
        )
      ])
    }
  if let height = anchors.height {
    NSLayoutConstraint.activate([
      childView.heightAnchor
        .constraint(equalToConstant: height)
    ])
  }
  if let width = anchors.width {
    NSLayoutConstraint.activate([
      childView.widthAnchor
        .constraint(equalToConstant: width)
      ])
    }
  }
}

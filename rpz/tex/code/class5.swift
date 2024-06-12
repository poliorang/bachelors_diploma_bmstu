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
            ComponentType.uiButton.startTag:

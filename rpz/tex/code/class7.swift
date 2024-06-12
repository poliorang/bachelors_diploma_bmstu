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

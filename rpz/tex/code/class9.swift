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

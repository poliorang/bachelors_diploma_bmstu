                rootView: uiView,
                from: Array(
                    components[j..<components.count])
                )

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

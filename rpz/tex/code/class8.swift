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

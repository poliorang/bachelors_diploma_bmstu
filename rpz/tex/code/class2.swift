      return
    }
    let separatedClearContent = clearContent
      .components(separatedBy: "\n")
    let joinedClearContent = separatedClearContent
      .joined(separator: "=")
    let components = joinedClearContent
      .components(separatedBy: "=")
    _ = createView(rootView: rootView, from: components)
  }

  private func createView(
    rootView: UIView,
    from components: [String]
  ) -> Int {
    var i = 0
    var finalTagIndex = 0
    while i < components.count {
      switch components[i] {
      case ComponentType.uiView.startTag:
        var j = i + 1
        var uiView = UIView().autolayout()
        var anchors = Anchors()
        while components[j] != ComponentType.uiView.endTag {
          switch components[j] {
          case ComponentType.uiView.startTag,
              ComponentType.uiLabel.startTag,
              ComponentType.uiButton.startTag:
                j += createView(

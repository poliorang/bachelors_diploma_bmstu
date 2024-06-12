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

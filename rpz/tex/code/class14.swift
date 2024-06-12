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

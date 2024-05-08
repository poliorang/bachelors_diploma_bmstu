//
//  ViewController.swift
//  diplomaTest
//
//  Created by Polina Egorova on 23.04.2024.
//

import UIKit

class ViewController: UIViewController {
  let layoutNode = Orang()

  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .systemPink
  }

  override func viewWillLayoutSubviews() {
    guard let path = Bundle.main.path(forResource: "test", ofType: "xml") else {
        print("File not found")
        return
    }
    do {
      let xmlString = try? String(contentsOfFile: path)
      print(xmlString)
      let view = layoutNode.createUIView(from: xmlString!)
      if let createdView = view {
        self.view.addSubview(createdView)
      }
    }
  }
}

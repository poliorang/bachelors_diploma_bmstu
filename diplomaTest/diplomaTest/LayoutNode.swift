//
//  LayoutNode.swift
//  diplomaTest
//
//  Created by Polina Egorova on 23.04.2024.
//

import Foundation
import UIKit

enum ComponentType {
  case uiView
  case uiLabel
}

class Orang {
  func createUIView(from string: String) -> UIView? {
    guard let cleanString = string
      .replacingOccurrences(of: "Optional(", with: "")
      .replacingOccurrences(of: ")", with: "")
      .replacingOccurrences(of: "</", with: "")
      .replacingOccurrences(of: "<", with: "")
      .replacingOccurrences(of: ">", with: "")
      .replacingOccurrences(of: " ", with: "")
      .replacingOccurrences(of: "\"", with: "") as NSString? else {
      return nil
    }

    let components1 = cleanString.components(separatedBy: "\n")
    let a = components1.joined(separator: "=")
    let components = a.components(separatedBy: "=")

    print(components)
    var componentType: ComponentType = .uiView

    var width: CGFloat = 0
    var height: CGFloat = 0
    var backgroundColor: UIColor = UIColor.white
    var text: String = ""
    var textAlignment: NSTextAlignment = .natural
    for (index, component) in components.enumerated() {
      if component == "width" {
        width = CGFloat(Double(components[index + 1].replacingOccurrences(of: "%", with: "")) ?? 0) / 100.0 * UIScreen.main.bounds.width
      } else if component == "height" {
        height = CGFloat(Double(components[index + 1].replacingOccurrences(of: "%", with: "")) ?? 0) / 100.0 * UIScreen.main.bounds.height
      } else if component == "backgroundColor" {
        let hexColor = components[index + 1].replacingOccurrences(of: "#", with: "")
        backgroundColor = UIColor(red: CGFloat((UInt(hexColor, radix: 16)! >> 16) & 0xFF) / 255.0,
                                  green: CGFloat((UInt(hexColor, radix: 16)! >> 8) & 0xFF) / 255.0,
                                  blue: CGFloat(UInt(hexColor, radix: 16)! & 0xFF) / 255.0, alpha: 1)
      } else if component == "UIView" {
        componentType = .uiView
      } else if component == "UILabel" {
        componentType = .uiLabel
      } else if component == "text" {
        text = components[index + 1]
      } else if component == "textAlignment" {
        if components[index + 1] == "center" {
          textAlignment = NSTextAlignment(rawValue: 1)!
        } else if components[index + 1] == "left" {
          textAlignment = NSTextAlignment(rawValue: 0)!
        } else if components[index + 1] == "right" {
          textAlignment = NSTextAlignment(rawValue: 2)!
        }
      }
    }
    
    let frame = CGRect(x: 0, y: 0, width: width, height: height)
    
    var view: UIView
    switch componentType {
    case.uiView:
      view = UIView(frame: frame)
    case.uiLabel:
      view = UILabel(frame: frame)
      (view as! UILabel).text = text
      (view as! UILabel).textAlignment = textAlignment
    default:
      view = UIView(frame: frame)
    }

    view.backgroundColor = backgroundColor
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }
}


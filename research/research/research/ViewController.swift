//
//  ViewController.swift
//  research
//
//  Created by Polina Egorova on 18.05.2024.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
//    easy()
//    medium()
    hard()
  }

  private func easy() {
    let easy = UIView()
    easy.translatesAutoresizingMaskIntoConstraints = false
    easy.backgroundColor = .white
    view.addSubview(easy)

    NSLayoutConstraint.activate([
      easy.leftAnchor.constraint(equalTo: view.leftAnchor),
      easy.topAnchor.constraint(equalTo: view.topAnchor),
      easy.rightAnchor.constraint(equalTo: view.rightAnchor),
      easy.bottomAnchor.constraint(equalTo: view.bottomAnchor)
    ])
  }

  private func medium() {
    let medium = UIView()
    medium.translatesAutoresizingMaskIntoConstraints = false
    medium.backgroundColor = .white
    view.addSubview(medium)

    NSLayoutConstraint.activate([
      medium.leftAnchor.constraint(equalTo: view.leftAnchor),
      medium.topAnchor.constraint(equalTo: view.topAnchor),
      medium.rightAnchor.constraint(equalTo: view.rightAnchor),
      medium.bottomAnchor.constraint(equalTo: view.bottomAnchor)
    ])

    let medium1 = UIView()
    medium1.translatesAutoresizingMaskIntoConstraints = false
    medium1.backgroundColor = .red
    view.addSubview(medium1)

    NSLayoutConstraint.activate([
      medium1.leftAnchor.constraint(equalTo: view.leftAnchor),
      medium1.topAnchor.constraint(equalTo: view.topAnchor),
      medium1.widthAnchor.constraint(equalToConstant: 95.0 / 100.0 * UIScreen.main.bounds.width),
      medium1.heightAnchor.constraint(equalToConstant: 95.0 / 100.0 * UIScreen.main.bounds.height)
    ])

    let medium2 = UIView()
    medium2.translatesAutoresizingMaskIntoConstraints = false
    medium2.backgroundColor = .green
    view.addSubview(medium2)

    NSLayoutConstraint.activate([
      medium2.leftAnchor.constraint(equalTo: view.leftAnchor),
      medium2.topAnchor.constraint(equalTo: view.topAnchor),
      medium2.widthAnchor.constraint(equalToConstant: 90.0 / 100.0 * UIScreen.main.bounds.width),
      medium2.heightAnchor.constraint(equalToConstant: 90.0 / 100.0 * UIScreen.main.bounds.height)
    ])

    let medium3 = UIView()
    medium3.translatesAutoresizingMaskIntoConstraints = false
    medium3.backgroundColor = .brown
    view.addSubview(medium3)

    NSLayoutConstraint.activate([
      medium3.leftAnchor.constraint(equalTo: view.leftAnchor),
      medium3.topAnchor.constraint(equalTo: view.topAnchor),
      medium3.widthAnchor.constraint(equalToConstant: 85.0 / 100.0 * UIScreen.main.bounds.width),
      medium3.heightAnchor.constraint(equalToConstant: 85.0 / 100.0 * UIScreen.main.bounds.height)
    ])

    let medium4 = UIView()
    medium4.translatesAutoresizingMaskIntoConstraints = false
    medium4.backgroundColor = .purple
    view.addSubview(medium4)

    NSLayoutConstraint.activate([
      medium4.leftAnchor.constraint(equalTo: view.leftAnchor),
      medium4.topAnchor.constraint(equalTo: view.topAnchor),
      medium4.widthAnchor.constraint(equalToConstant: 80.0 / 100.0 * UIScreen.main.bounds.width),
      medium4.heightAnchor.constraint(equalToConstant: 80.0 / 100.0 * UIScreen.main.bounds.height)
    ])

    let medium5 = UIView()
    medium5.translatesAutoresizingMaskIntoConstraints = false
    medium5.backgroundColor = .orange
    view.addSubview(medium5)

    NSLayoutConstraint.activate([
      medium5.leftAnchor.constraint(equalTo: view.leftAnchor),
      medium5.topAnchor.constraint(equalTo: view.topAnchor),
      medium5.widthAnchor.constraint(equalToConstant: 75.0 / 100.0 * UIScreen.main.bounds.width),
      medium5.heightAnchor.constraint(equalToConstant: 75.0 / 100.0 * UIScreen.main.bounds.height)
    ])

    let medium6 = UIView()
    medium6.translatesAutoresizingMaskIntoConstraints = false
    medium6.backgroundColor = .systemPink
    view.addSubview(medium6)

    NSLayoutConstraint.activate([
      medium6.leftAnchor.constraint(equalTo: view.leftAnchor),
      medium6.topAnchor.constraint(equalTo: view.topAnchor),
      medium6.widthAnchor.constraint(equalToConstant: 70.0 / 100.0 * UIScreen.main.bounds.width),
      medium6.heightAnchor.constraint(equalToConstant: 70.0 / 100.0 * UIScreen.main.bounds.height)
    ])
  }

  private func hard() {
    let medium = UIView()
    medium.translatesAutoresizingMaskIntoConstraints = false
    medium.backgroundColor = .white
    view.addSubview(medium)

    NSLayoutConstraint.activate([
      medium.leftAnchor.constraint(equalTo: view.leftAnchor),
      medium.topAnchor.constraint(equalTo: view.topAnchor),
      medium.rightAnchor.constraint(equalTo: view.rightAnchor),
      medium.bottomAnchor.constraint(equalTo: view.bottomAnchor)
    ])

    let medium1 = UIView()
    medium1.translatesAutoresizingMaskIntoConstraints = false
    medium1.backgroundColor = .red
    view.addSubview(medium1)

    NSLayoutConstraint.activate([
      medium1.leftAnchor.constraint(equalTo: view.leftAnchor),
      medium1.topAnchor.constraint(equalTo: view.topAnchor),
      medium1.widthAnchor.constraint(equalToConstant: 95.0 / 100.0 * UIScreen.main.bounds.width),
      medium1.heightAnchor.constraint(equalToConstant: 95.0 / 100.0 * UIScreen.main.bounds.height)
    ])

    let medium2 = UIView()
    medium2.translatesAutoresizingMaskIntoConstraints = false
    medium2.backgroundColor = .green
    view.addSubview(medium2)

    NSLayoutConstraint.activate([
      medium2.leftAnchor.constraint(equalTo: view.leftAnchor),
      medium2.topAnchor.constraint(equalTo: view.topAnchor),
      medium2.widthAnchor.constraint(equalToConstant: 90.0 / 100.0 * UIScreen.main.bounds.width),
      medium2.heightAnchor.constraint(equalToConstant: 90.0 / 100.0 * UIScreen.main.bounds.height)
    ])

    let medium3 = UIView()
    medium3.translatesAutoresizingMaskIntoConstraints = false
    medium3.backgroundColor = .brown
    view.addSubview(medium3)

    NSLayoutConstraint.activate([
      medium3.leftAnchor.constraint(equalTo: view.leftAnchor),
      medium3.topAnchor.constraint(equalTo: view.topAnchor),
      medium3.widthAnchor.constraint(equalToConstant: 85.0 / 100.0 * UIScreen.main.bounds.width),
      medium3.heightAnchor.constraint(equalToConstant: 85.0 / 100.0 * UIScreen.main.bounds.height)
    ])

    let medium4 = UIView()
    medium4.translatesAutoresizingMaskIntoConstraints = false
    medium4.backgroundColor = .purple
    view.addSubview(medium4)

    NSLayoutConstraint.activate([
      medium4.leftAnchor.constraint(equalTo: view.leftAnchor),
      medium4.topAnchor.constraint(equalTo: view.topAnchor),
      medium4.widthAnchor.constraint(equalToConstant: 80.0 / 100.0 * UIScreen.main.bounds.width),
      medium4.heightAnchor.constraint(equalToConstant: 80.0 / 100.0 * UIScreen.main.bounds.height)
    ])

    let medium5 = UIView()
    medium5.translatesAutoresizingMaskIntoConstraints = false
    medium5.backgroundColor = .orange
    view.addSubview(medium5)

    NSLayoutConstraint.activate([
      medium5.leftAnchor.constraint(equalTo: view.leftAnchor),
      medium5.topAnchor.constraint(equalTo: view.topAnchor),
      medium5.widthAnchor.constraint(equalToConstant: 75.0 / 100.0 * UIScreen.main.bounds.width),
      medium5.heightAnchor.constraint(equalToConstant: 75.0 / 100.0 * UIScreen.main.bounds.height)
    ])

    let medium6 = UIView()
    medium6.translatesAutoresizingMaskIntoConstraints = false
    medium6.backgroundColor = .systemPink
    view.addSubview(medium6)

    NSLayoutConstraint.activate([
      medium6.leftAnchor.constraint(equalTo: view.leftAnchor),
      medium6.topAnchor.constraint(equalTo: view.topAnchor),
      medium6.widthAnchor.constraint(equalToConstant: 70.0 / 100.0 * UIScreen.main.bounds.width),
      medium6.heightAnchor.constraint(equalToConstant: 70.0 / 100.0 * UIScreen.main.bounds.height)
    ])

    let medium7 = UIView()
    medium7.translatesAutoresizingMaskIntoConstraints = false
    medium7.backgroundColor = .gray
    view.addSubview(medium7)

    NSLayoutConstraint.activate([
      medium7.leftAnchor.constraint(equalTo: view.leftAnchor),
      medium7.topAnchor.constraint(equalTo: view.topAnchor),
      medium7.widthAnchor.constraint(equalToConstant: 65.0 / 100.0 * UIScreen.main.bounds.width),
      medium7.heightAnchor.constraint(equalToConstant: 65.0 / 100.0 * UIScreen.main.bounds.height)
    ])
  }
}


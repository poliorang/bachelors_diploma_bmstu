            of: UIResponder.self,
            with: #selector(UIResponder.layoutItTimeKeyCommands)
          )
          UIResponder.handlerInstalled = true
        }

      #endif
  }

  static func reload() {
    for observer in observers {
      observer.reload()
    }
  }
}

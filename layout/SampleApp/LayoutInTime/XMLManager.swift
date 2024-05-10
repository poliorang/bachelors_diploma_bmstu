// bachelors-diploma-poliorang

import Foundation


func xmlPath(xmlName: String?) -> String? {
    guard let lastIndex = #file.lastIndex(of: "/") else { return nil }

    let firstTrimmedPath = String(#file.prefix(upTo: lastIndex))
    guard let lastIndex = firstTrimmedPath.lastIndex(of: "/"),
          let xmlName = xmlName else {
        return nil
    }

    let trimmedPath = String(firstTrimmedPath.prefix(upTo: lastIndex)) + "/" + xmlName + ".xml"

    return trimmedPath
}

func parseXMLElements(xmlContent: String?) -> NSString? {
    guard let xmlContent = xmlContent,
          let clearString = xmlContent
        .replacingOccurrences(of: "Optional(", with: "")
        .replacingOccurrences(of: ")", with: "")
        .replacingOccurrences(of: "<", with: "")
        .replacingOccurrences(of: ">", with: "")
        .replacingOccurrences(of: " ", with: "")
        .replacingOccurrences(of: "\"", with: "") as NSString? else {
        return nil
    }

    return clearString
}

//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

public class FaresPeriod: JSONDecodable, JSONEncodable, PrettyPrintable {

    public var endDate: Date?

    public var id: Int?

    public var isFuture: Bool?

    public var startDate: Date?

    public var viewableDate: Date?

    public init(endDate: Date? = nil, id: Int? = nil, isFuture: Bool? = nil, startDate: Date? = nil, viewableDate: Date? = nil) {
        self.endDate = endDate
        self.id = id
        self.isFuture = isFuture
        self.startDate = startDate
        self.viewableDate = viewableDate
    }

    public required init(jsonDictionary: JSONDictionary) throws {
        endDate = jsonDictionary.json(atKeyPath: "endDate")
        id = jsonDictionary.json(atKeyPath: "id")
        isFuture = jsonDictionary.json(atKeyPath: "isFuture")
        startDate = jsonDictionary.json(atKeyPath: "startDate")
        viewableDate = jsonDictionary.json(atKeyPath: "viewableDate")
    }

    public func encode() -> JSONDictionary {
        var dictionary: JSONDictionary = [:]
        if let endDate = endDate?.encode() {
            dictionary["endDate"] = endDate
        }
        if let id = id {
            dictionary["id"] = id
        }
        if let isFuture = isFuture {
            dictionary["isFuture"] = isFuture
        }
        if let startDate = startDate?.encode() {
            dictionary["startDate"] = startDate
        }
        if let viewableDate = viewableDate?.encode() {
            dictionary["viewableDate"] = viewableDate
        }
        return dictionary
    }

    /// pretty prints all properties including nested models
    public var prettyPrinted: String {
        return "\(type(of: self)):\n\(encode().recursivePrint(indentIndex: 1))"
    }
}
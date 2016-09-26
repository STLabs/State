
//
// AUTO GENERATED FILE
// _TestImmutableOptionalTypes.swift
//

import Foundation
import State

public struct TestImmutableOptionalTypes : Model {
    public let myDate: Date?
    public let myFloat: Float?
    public let myBinary: Data?
    public let myDouble: Double?
    public let myString: String?
    public let myBoolean: Bool?
    public let myDecimal: NSDecimalNumber?
    public let myInt: Int?

}

extension TestImmutableOptionalTypes  {

    public init?(with source: Store) {
        let store = TestImmutableOptionalTypes.migrate(source: source)

        let myDate: Date? = store.value(forKey: "myDate")
        let myFloat: Float? = store.value(forKey: "myFloat")
        let myBinary: Data? = store.value(forKey: "myBinary")
        let myDouble: Double? = store.value(forKey: "myDouble")
        let myString: String? = store.value(forKey: "myString")
        let myBoolean: Bool? = store.value(forKey: "myBoolean")
        let myDecimal: NSDecimalNumber? = store.value(forKey: "myDecimal")
        let myInt: Int? = store.value(forKey: "myInt")

        self.myDate = myDate
        self.myFloat = myFloat
        self.myBinary = myBinary
        self.myDouble = myDouble
        self.myString = myString
        self.myBoolean = myBoolean
        self.myDecimal = myDecimal
        self.myInt = myInt
        finishReading(from: store)
    }

    public func write(to store: inout Store) {
        store.set(myDate, forKey: "myDate")
        store.set(myFloat, forKey: "myFloat")
        store.set(myBinary, forKey: "myBinary")
        store.set(myDouble, forKey: "myDouble")
        store.set(myString, forKey: "myString")
        store.set(myBoolean, forKey: "myBoolean")
        store.set(myDecimal, forKey: "myDecimal")
        store.set(myInt, forKey: "myInt")

        TestImmutableOptionalTypes.writeVersion(to: &store)
        finishWriting(to: &store)
    }
}

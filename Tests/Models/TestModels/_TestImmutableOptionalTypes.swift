/************************************************

        WARNING: MACHINE GENERATED FILE

 ************************************************/
import Foundation
import State

public struct TestImmutableOptionalTypes : Model {
    public let myBinary: NSData?
    public let myBoolean: Bool?
    public let myDate: NSDate?
    public let myDecimal: NSDecimalNumber?
    public let myDouble: Double?
    public let myFloat: Float?
    public let myInt: Int?
    public let myString: String?

public init(myBinary: NSData?, myBoolean: Bool?, myDate: NSDate?, myDecimal: NSDecimalNumber?, myDouble: Double?, myFloat: Float?, myInt: Int?, myString: String?) {

    self.myBinary = myBinary
    self.myBoolean = myBoolean
    self.myDate = myDate
    self.myDecimal = myDecimal
    self.myDouble = myDouble
    self.myFloat = myFloat
    self.myInt = myInt
    self.myString = myString

    }
}

extension TestImmutableOptionalTypes : Decodable {

    static func create(myBinary: NSData?)(myBoolean: Bool?)(myDate: NSDate?)(myDecimal: NSDecimalNumber?)(myDouble: Double?)(myFloat: Float?)(myInt: Int?)(myString: String?) -> TestImmutableOptionalTypes  {
        return TestImmutableOptionalTypes(myBinary: myBinary, myBoolean: myBoolean, myDate: myDate, myDecimal: myDecimal, myDouble: myDouble, myFloat: myFloat, myInt: myInt, myString: myString)
    }

    public init?(var decoder: Decoder) {

    decoder = TestImmutableOptionalTypes.performMigrationIfNeeded(decoder)

        let instance: TestImmutableOptionalTypes? = TestImmutableOptionalTypes.create
        <^> decoder.decode("myBinary") >>> asOptional
        <*> decoder.decode("myBoolean") >>> asOptional
        <*> decoder.decode("myDate") >>> asOptional
        <*> decoder.decode("myDecimal") >>> asOptional
        <*> decoder.decode("myDouble") >>> asOptional
        <*> decoder.decode("myFloat") >>> asOptional
        <*> decoder.decode("myInt") >>> asOptional
        <*> decoder.decode("myString") >>> asOptional

        if let i = instance {
            i.didFinishDecodingWithDecoder(decoder)
            self = i
        } else { return nil }
    }
}

extension TestImmutableOptionalTypes : Encodable {

    public func encode(encoder: Encoder) {
        encoder.encode(myBinary, "myBinary")
        encoder.encode(myBoolean, "myBoolean")
        encoder.encode(myDate, "myDate")
        encoder.encode(myDecimal, "myDecimal")
        encoder.encode(myDouble, "myDouble")
        encoder.encode(myFloat, "myFloat")
        encoder.encode(myInt, "myInt")
        encoder.encode(myString, "myString")

        TestImmutableOptionalTypes.encodeVersionIfNeeded(encoder)

        self.willFinishEncodingWithEncoder(encoder)
    }
}

extension TestImmutableOptionalTypes {

    /// These are provided from the data model designer
    /// and can be used to determine if the model is
    /// a different version.
    public static func modelVersionHash() -> String {
        return "<8954c691 e621c6bd bad84d7f 4fb9addd 53ed8e45 053f272c fafd2d9b 63de0acc>"
    }

    public static func modelVersionHashModifier() -> String? {
        return nil
    }
}

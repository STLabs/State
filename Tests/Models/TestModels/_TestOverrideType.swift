/************************************************

        WARNING: MACHINE GENERATED FILE

 ************************************************/
import Foundation
import State

public struct TestOverrideType : Model {
    public var myURL: NSURL?
    public var myArrayOfString: [String]?

}

extension TestOverrideType  {

   public static func read(from store: Store) -> TestOverrideType? {
      return self.init(with: store)
   }

    public init?(with inStore: Store) {
        let store = TestOverrideType.migrateIfNeeded(with: inStore)

        let myURL: NSURL? = store.value(forKey: "myURL")
        let myArrayOfString: [String]? = store.value(forKey: "myArrayOfString")

        self.myURL = myURL
        self.myArrayOfString = myArrayOfString
        finishReading(from: store)
    }

    public func write(to store: inout Store) {
        store.set(myURL, forKey: "myURL")
        store.set(myArrayOfString, forKey: "myArrayOfString")

        TestOverrideType.writeVersion(with: store)
        finishWriting(to: &store)
    }
}


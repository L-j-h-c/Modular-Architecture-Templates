import Foundation
import FoundationUtil
import EnumUtil
import LocalCore

public final class LocalPackageTuistKit {
    static let enums = Network()
    static let found = FoundationUtil()
    static let enumas = EnumUtil()
    public static func hello() {
        print(enums.enumTest)
        print(enumas.isEnum + "asdfaf")
        print("Hello, from your Kit framework")
    }
}

import Foundation

import EnumUtil

public final class LocalPackageTuistKit {
    static let enums = EnumUtil()
    public static func hello() {
        print(enums.isEnum)
        print("Hello, from your Kit framework")
    }
}

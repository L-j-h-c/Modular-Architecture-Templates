import EnumUtil

public struct Network {
    public private(set) var text = "Hello, World!"

    public let enumTest = EnumUtil()
    public init() {
        
    }
    
    public func printEnum() {
        print(enumTest.isEnum)
    }
}

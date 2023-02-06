import Foundation

public struct TestData<DataType> {
    public let data: DataType
    public let name: String?
    public var file: StaticString
    public var line: UInt

    public init(
        _ data: DataType,
        name: String? = nil,
        file: StaticString = #file,
        line: UInt = #line
    ) {
        self.data = data
        self.name = name
        self.file = file
        self.line = line
    }
}

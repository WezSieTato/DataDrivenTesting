import Foundation

public struct TestData<DataType> {
    public var data: DataType
    public var file: StaticString
    public var line: UInt

    public init(
        _ data: DataType,
        file: StaticString = #file,
        line: UInt = #line
    ) {
        self.data = data
        self.file = file
        self.line = line
    }
}

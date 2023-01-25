import XCTest

public extension XCTestCase {
    func dataTests<DataType>(
        _ dataArray: [TestData<DataType>],
        _ testClosure: (TestData<DataType>, XCTActivity) -> Void
    ) {
        dataArray.forEach { testData in
            let name = "When data is \(testData.data)"
            XCTContext.runActivity(named: name) { activity in
                testClosure(testData, activity)
            }
        }
    }
}

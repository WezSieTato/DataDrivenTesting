import XCTest
@testable import DataDrivenTesting

final class DataDrivenTests: XCTestCase {
    func testDescriptionFromInteger() {
        dataTests([
            TestData((input: 1, expected: "1")),
            TestData((input: 2, expected: "2"))
        ]) { testData, activity in
            let result = testData.data.input.description
            
            XCTAssertEqual(result, testData.data.expected, file: testData.file, line: testData.line)
        }

    }
}

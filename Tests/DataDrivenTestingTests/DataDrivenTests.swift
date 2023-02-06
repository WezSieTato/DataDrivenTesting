@testable import DataDrivenTesting
import XCTest

final class DataDrivenTests: XCTestCase {
    func testDescriptionFromInteger() {
        dataTests([
            TestData((input: 1, expected: "1")),
            TestData((input: 2, expected: "2")),
        ]) { testData, _ in
            let result = testData.data.input.description

            XCTAssertEqual(result, testData.data.expected, file: testData.file, line: testData.line)
        }
    }

    func testSumOfInt() {
        dataTests([
            .init(([], 0), name: "Empty array"),
            .init(([1], 1), name: "One value in array"),
            .init(([2, 3], 5), name: "Two values in array"),

        ]) { testData, _ in
            let result = testData.data.0.reduce(0, +)

            XCTAssertEqual(result, testData.data.1, file: testData.file, line: testData.line)
        }
    }
}

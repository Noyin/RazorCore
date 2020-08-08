import XCTest
@testable import RazorCore

final class RazorCoreTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(RazorCore().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}

import XCTest
@testable import RazorCore

final class RazorCoreTests: XCTestCase {
    func testColorRedEqual() {
        let color = RazorCore.colorFromHexString("FF0000")
        XCTAssertEqual(color, .red)
    }

    static var allTests = [
        ("testColorRedEqual", testColorRedEqual)
    ]
}

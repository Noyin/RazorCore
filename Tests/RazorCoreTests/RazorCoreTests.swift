import XCTest
@testable import RazorCore

final class RazorCoreTests: XCTestCase {
    func testColorRedEqual() {
        let color = RazorCore.colorFromHexString("FF0000")
        XCTAssertEqual(color, .red)
    }

    func testRazeColorsAreEqual() {
           let color = RazorCore.colorFromHexString("006736")
           XCTAssertEqual(color, RazorCore.razeColor)
       }

    static var allTests = [
        ("testColorRedEqual", testColorRedEqual),
        ("testRazeColorsAreEqual", testRazeColorsAreEqual)
    ]
}

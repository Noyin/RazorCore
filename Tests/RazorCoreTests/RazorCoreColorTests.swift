import XCTest
@testable import RazorCore

final class RazorCoreColorTests: XCTestCase {
    func testColorRedEqual() {
        let color = RazorCore.Color.fromHexString("FF0000")
        XCTAssertEqual(color, .red)
    }

    func testRazeColorsAreEqual() {
        let color = RazorCore.Color.fromHexString("006736")
        XCTAssertEqual(color, RazorCore.Color.razeColor)
    }

    func testSecondaryRazeColorsAreEqual() {
        let secondaryColor = RazorCore.Color.fromHexString("FCFFFD")
        XCTAssertEqual(secondaryColor, RazorCore.Color.secondaryRazeColor)
    }

    static var allTests = [
        ("testColorRedEqual", testColorRedEqual),
        ("testRazeColorsAreEqual", testRazeColorsAreEqual),
        ("testSecondaryRazeColorsAreEqual", testSecondaryRazeColorsAreEqual)
    ]
}

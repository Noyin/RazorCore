import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(RazorCoreColorTests.allTests),
        testCase(RazorCoreNetworkTests.allTests)
    ]
}
#endif

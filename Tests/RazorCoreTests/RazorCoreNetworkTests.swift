//
//  RazorCoreNetworkTests.swift
//  RazorCoreTests
//
//  Created by Noyin on 2020-08-09.
//

import XCTest
@testable import RazorCore

final class RazorCoreNetworkTests: XCTestCase {
    func testLoadDataCall() {
        let manager = RazorCore.Networking.Manager()
        let expectation = XCTestExpectation(description: "Called for data")
        guard let url = URL(string: "https://raywenderlich.com") else {
            return XCTFail("Could not create URL properly")
        }

        manager.loadData(from: url) { result in
            expectation.fulfill()
            switch result {
            case .success(let returnedData):
                XCTAssertNotNil(returnedData, "Response data is nil")
            case .failure(let error):
                XCTFail(error?.localizedDescription ?? " error forming error result")
            }
        }

        wait(for: [expectation], timeout: 5)
    }

    static var allTests = [
        ("testLoadDataCall", testLoadDataCall)
    ]
}
